
"use strict";

let RobotInfo = require('./RobotInfo.js');
let ImagePoint = require('./ImagePoint.js');
let MonitorState = require('./MonitorState.js');
let ImageGoal = require('./ImageGoal.js');
let PointSequence = require('./PointSequence.js');
let AntiCollisionWheelState = require('./AntiCollisionWheelState.js');
let AlterPose = require('./AlterPose.js');
let NetworkedDevicesState = require('./NetworkedDevicesState.js');
let TrainDataSet = require('./TrainDataSet.js');
let TeachDataInfo = require('./TeachDataInfo.js');
let CameraInfo = require('./CameraInfo.js');
let GeneralHardwareAndNodeState = require('./GeneralHardwareAndNodeState.js');
let NotificationInfo = require('./NotificationInfo.js');
let EquipmentCommon = require('./EquipmentCommon.js');
let AssembleState = require('./AssembleState.js');
let AlterPoseAndJoints = require('./AlterPoseAndJoints.js');
let RobotAuth = require('./RobotAuth.js');
let RobotArmInfo = require('./RobotArmInfo.js');
let SlideTableInfo = require('./SlideTableInfo.js');
let UniversalStateInfo = require('./UniversalStateInfo.js');
let AntiCollisionWheelManualControl = require('./AntiCollisionWheelManualControl.js');
let LiftingColumnInfo = require('./LiftingColumnInfo.js');
let Localization3D = require('./Localization3D.js');
let BollardState = require('./BollardState.js');
let DiskState = require('./DiskState.js');
let ChassisState = require('./ChassisState.js');
let CropBox = require('./CropBox.js');
let EquipmentGroup = require('./EquipmentGroup.js');
let ChassisInfo = require('./ChassisInfo.js');
let NetworkCardState = require('./NetworkCardState.js');
let CorrectionJoint = require('./CorrectionJoint.js');
let CorrectionPoint = require('./CorrectionPoint.js');
let CPUMemNetState = require('./CPUMemNetState.js');
let TeachDataInfoArray = require('./TeachDataInfoArray.js');
let ROSTopicState = require('./ROSTopicState.js');
let HardwareAndNodeState = require('./HardwareAndNodeState.js');
let ImageResult = require('./ImageResult.js');
let BollardManualControl = require('./BollardManualControl.js');
let CarBaseMoveTaskFeedback = require('./CarBaseMoveTaskFeedback.js');
let BollardOperationResult = require('./BollardOperationResult.js');
let CurrentCorrectionPointActionFeedback = require('./CurrentCorrectionPointActionFeedback.js');
let BollardOperationAction = require('./BollardOperationAction.js');
let CurrentCorrectionPointActionGoal = require('./CurrentCorrectionPointActionGoal.js');
let BollardOperationFeedback = require('./BollardOperationFeedback.js');
let AcquisitionTaskResult = require('./AcquisitionTaskResult.js');
let AcquisitionTaskActionGoal = require('./AcquisitionTaskActionGoal.js');
let AcquisitionTaskActionFeedback = require('./AcquisitionTaskActionFeedback.js');
let CurrentCorrectionPointFeedback = require('./CurrentCorrectionPointFeedback.js');
let TakeAPictureActionGoal = require('./TakeAPictureActionGoal.js');
let CarBaseMoveTaskResult = require('./CarBaseMoveTaskResult.js');
let CurrentCorrectionPointAction = require('./CurrentCorrectionPointAction.js');
let TakeAPictureActionResult = require('./TakeAPictureActionResult.js');
let AcquisitionTaskActionResult = require('./AcquisitionTaskActionResult.js');
let CarBaseMoveTaskGoal = require('./CarBaseMoveTaskGoal.js');
let TakeAPictureResult = require('./TakeAPictureResult.js');
let CarBaseMoveTaskActionGoal = require('./CarBaseMoveTaskActionGoal.js');
let BollardOperationActionFeedback = require('./BollardOperationActionFeedback.js');
let CurrentCorrectionPointActionResult = require('./CurrentCorrectionPointActionResult.js');
let CarBaseMoveTaskAction = require('./CarBaseMoveTaskAction.js');
let CarBaseMoveTaskActionFeedback = require('./CarBaseMoveTaskActionFeedback.js');
let CurrentCorrectionPointGoal = require('./CurrentCorrectionPointGoal.js');
let AcquisitionTaskGoal = require('./AcquisitionTaskGoal.js');
let AcquisitionTaskFeedback = require('./AcquisitionTaskFeedback.js');
let AcquisitionTaskAction = require('./AcquisitionTaskAction.js');
let CarBaseMoveTaskActionResult = require('./CarBaseMoveTaskActionResult.js');
let CurrentCorrectionPointResult = require('./CurrentCorrectionPointResult.js');
let BollardOperationActionResult = require('./BollardOperationActionResult.js');
let TakeAPictureActionFeedback = require('./TakeAPictureActionFeedback.js');
let TakeAPictureAction = require('./TakeAPictureAction.js');
let BollardOperationActionGoal = require('./BollardOperationActionGoal.js');
let BollardOperationGoal = require('./BollardOperationGoal.js');
let TakeAPictureFeedback = require('./TakeAPictureFeedback.js');
let TakeAPictureGoal = require('./TakeAPictureGoal.js');

module.exports = {
  RobotInfo: RobotInfo,
  ImagePoint: ImagePoint,
  MonitorState: MonitorState,
  ImageGoal: ImageGoal,
  PointSequence: PointSequence,
  AntiCollisionWheelState: AntiCollisionWheelState,
  AlterPose: AlterPose,
  NetworkedDevicesState: NetworkedDevicesState,
  TrainDataSet: TrainDataSet,
  TeachDataInfo: TeachDataInfo,
  CameraInfo: CameraInfo,
  GeneralHardwareAndNodeState: GeneralHardwareAndNodeState,
  NotificationInfo: NotificationInfo,
  EquipmentCommon: EquipmentCommon,
  AssembleState: AssembleState,
  AlterPoseAndJoints: AlterPoseAndJoints,
  RobotAuth: RobotAuth,
  RobotArmInfo: RobotArmInfo,
  SlideTableInfo: SlideTableInfo,
  UniversalStateInfo: UniversalStateInfo,
  AntiCollisionWheelManualControl: AntiCollisionWheelManualControl,
  LiftingColumnInfo: LiftingColumnInfo,
  Localization3D: Localization3D,
  BollardState: BollardState,
  DiskState: DiskState,
  ChassisState: ChassisState,
  CropBox: CropBox,
  EquipmentGroup: EquipmentGroup,
  ChassisInfo: ChassisInfo,
  NetworkCardState: NetworkCardState,
  CorrectionJoint: CorrectionJoint,
  CorrectionPoint: CorrectionPoint,
  CPUMemNetState: CPUMemNetState,
  TeachDataInfoArray: TeachDataInfoArray,
  ROSTopicState: ROSTopicState,
  HardwareAndNodeState: HardwareAndNodeState,
  ImageResult: ImageResult,
  BollardManualControl: BollardManualControl,
  CarBaseMoveTaskFeedback: CarBaseMoveTaskFeedback,
  BollardOperationResult: BollardOperationResult,
  CurrentCorrectionPointActionFeedback: CurrentCorrectionPointActionFeedback,
  BollardOperationAction: BollardOperationAction,
  CurrentCorrectionPointActionGoal: CurrentCorrectionPointActionGoal,
  BollardOperationFeedback: BollardOperationFeedback,
  AcquisitionTaskResult: AcquisitionTaskResult,
  AcquisitionTaskActionGoal: AcquisitionTaskActionGoal,
  AcquisitionTaskActionFeedback: AcquisitionTaskActionFeedback,
  CurrentCorrectionPointFeedback: CurrentCorrectionPointFeedback,
  TakeAPictureActionGoal: TakeAPictureActionGoal,
  CarBaseMoveTaskResult: CarBaseMoveTaskResult,
  CurrentCorrectionPointAction: CurrentCorrectionPointAction,
  TakeAPictureActionResult: TakeAPictureActionResult,
  AcquisitionTaskActionResult: AcquisitionTaskActionResult,
  CarBaseMoveTaskGoal: CarBaseMoveTaskGoal,
  TakeAPictureResult: TakeAPictureResult,
  CarBaseMoveTaskActionGoal: CarBaseMoveTaskActionGoal,
  BollardOperationActionFeedback: BollardOperationActionFeedback,
  CurrentCorrectionPointActionResult: CurrentCorrectionPointActionResult,
  CarBaseMoveTaskAction: CarBaseMoveTaskAction,
  CarBaseMoveTaskActionFeedback: CarBaseMoveTaskActionFeedback,
  CurrentCorrectionPointGoal: CurrentCorrectionPointGoal,
  AcquisitionTaskGoal: AcquisitionTaskGoal,
  AcquisitionTaskFeedback: AcquisitionTaskFeedback,
  AcquisitionTaskAction: AcquisitionTaskAction,
  CarBaseMoveTaskActionResult: CarBaseMoveTaskActionResult,
  CurrentCorrectionPointResult: CurrentCorrectionPointResult,
  BollardOperationActionResult: BollardOperationActionResult,
  TakeAPictureActionFeedback: TakeAPictureActionFeedback,
  TakeAPictureAction: TakeAPictureAction,
  BollardOperationActionGoal: BollardOperationActionGoal,
  BollardOperationGoal: BollardOperationGoal,
  TakeAPictureFeedback: TakeAPictureFeedback,
  TakeAPictureGoal: TakeAPictureGoal,
};
