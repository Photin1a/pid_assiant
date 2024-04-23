#include "types.h"

namespace photinia {
QPlainTextEdit *print_info_plain_ = nullptr;
void Info(const QString &info_str) {
  std::cout << "\033[32m[info]:" << info_str.toStdString() << "\033[0m\n";
}
void Warn(const QString &warn_str) {
  std::cout << "\033[33m[warn]:" << warn_str.toStdString() << "\033[0m\n";
}
void Error(const QString &error_str) {
  std::cout << "\033[31m[error]:" << error_str.toStdString() << "\033[0m\n";
}

void SetPlainTextObj(QPlainTextEdit *info_plain){
  print_info_plain_ = info_plain;
}

void PlainInfo(const QString &info_str){
  if(nullptr == print_info_plain_){
    Info(info_str);
    return;
  }
  QTextCharFormat format;
  format.setForeground(QBrush(QColor("green")));
  print_info_plain_->setCurrentCharFormat(format);
  print_info_plain_->appendPlainText(info_str);
}
void PlainWarn(const QString &warn_str){
  if(nullptr == print_info_plain_){
    Warn(warn_str);
    return;
  }
  QTextCharFormat format;
  format.setForeground(QBrush(QColor("yellow")));
  print_info_plain_->setCurrentCharFormat(format);
  print_info_plain_->appendPlainText(warn_str);
}
void PlainError(const QString &error_str){
  if(nullptr == print_info_plain_){
    Error(error_str);
    return;
    }
  QTextCharFormat format;
  format.setForeground(QBrush(QColor("red")));
  print_info_plain_->setCurrentCharFormat(format);
  print_info_plain_->appendPlainText(error_str);
}

double Rand(const double &min, const double &max) {
  return min + (double)(rand()) / RAND_MAX * (max - min);
}
void SavePose(const QString &file_path, const struct photinia::Pose &pose) {
  QJsonObject obj;
  obj["x"] = pose.x;
  obj["y"] = pose.y;
  obj["z"] = pose.z;
  obj["yaw"] = pose.yaw;
  obj["roll"] = pose.roll;
  obj["pitch"] = pose.pitch;
  photinia::SaveJsonObject(file_path, obj);
}

struct photinia::Pose &LoadPoseFromJson(const QString &file_path,
                                        struct photinia::Pose &pose) {
  QJsonObject obj;
  ReadJsonToObject(file_path, obj);
  pose.x = obj["x"].toDouble();
  pose.y = obj["y"].toDouble();
  pose.z = obj["z"].toDouble();
  pose.yaw = obj["yaw"].toDouble();
  pose.roll = obj["roll"].toDouble();
  pose.pitch = obj["pitch"].toDouble();
  return pose;
}

QString &ObjectToString(const QJsonObject &object, QString &json_str) {
  json_str = QJsonDocument(object).toJson();
  return json_str;
}

bool ReadJsonToObject(const QString &file_path, QJsonObject &json_object) {
  CheckFileExist(file_path);
  QFile json_file(file_path);
  if (!json_file.open(QIODevice::ReadWrite | QIODevice::Text)) {
    PlainError("false " + file_path +
          ".open(QIODevice::ReadWrite | QIODevice::Text)");
    return false;
  }
  QByteArray data = json_file.readAll();
  QJsonParseError parseError;
  QJsonDocument json_doc = QJsonDocument::fromJson(data, &parseError);
  if (parseError.error != QJsonParseError::NoError) {
    PlainWarn("Error parsing JSON:" + parseError.errorString() + "," + file_path +
         "is not a json file!");
    return false;
  }
  if (!json_doc.isObject()) {
    PlainError("JSON document is not an object.");
    return false;
  }
  json_object = json_doc.object();
  json_file.close();
  return true;
}

// 检查文件是否存在，不在去默认路径拷贝
void CheckFileExist(const QString &file_path, const QString &default_dir) {
  QFileInfo fileinfo(file_path);
  QDir directory(fileinfo.absolutePath());
  if (!directory.exists()) {
    directory.mkpath("."); // 新建目录./robot_name/
  }
  auto file = QFile(file_path);
  if (!file.exists()) {
    QFile::copy(default_dir + "/" + fileinfo.fileName(), file_path);
  }
}
bool ReadJsonParam(const QString &file_path, const QString &name,
                   QJsonValue &json_value) {
  QJsonObject json_object;
  if (!ReadJsonToObject(file_path, json_object)) {
    PlainError("!ReadJsonToObject(file_path, json_object)");
    return false;
  }
  json_value = json_object.value(name);
  return true;
}

bool SaveJsonObject(const QString &file_path, const QJsonObject &param) {
  QJsonValue json_value;
  if (!ReadJsonParam(file_path, "params list", json_value))
    return false;
  QJsonArray params_list = json_value.toArray();
  params_list.append(QJsonObject(param));
  QFile file(file_path);
  QJsonObject object;
  object["params list"] = params_list;
  file.open(QFileDevice::WriteOnly);
  file.write(QJsonDocument(object).toJson());
  file.close();
  PlainInfo("Saved " + file_path);
  return true;
}

//项目专用
void PID2JsonObject(const double &pos_p, const double &pos_i,
                    const double &pos_d, const double &yaw_p,
                    const double &yaw_i, const double &yaw_d,
                    const double &max_v, const double &max_w,
                    const double &brake_distance,OnBrake &on_brake,
                    QJsonObject &pid_json_object) {
  pid_json_object["max_linear"] = max_v;
  pid_json_object["max_w"] = max_w;
  pid_json_object["brake_distance"] = brake_distance;
  pid_json_object["linear_pid"] = QJsonArray({pos_p, pos_i, pos_d});
  pid_json_object["angular_pid"] = QJsonArray({yaw_p, yaw_i, yaw_d});
  pid_json_object["linear"] = QJsonArray({on_brake.linear.x,on_brake.linear.y,on_brake.linear.z});
  pid_json_object["angular"] = QJsonArray({on_brake.angular.x,on_brake.angular.y,on_brake.angular.z});
  pid_json_object["auto_brake_distance"] = on_brake.auto_brake_distance;
}
} // namespace photinia