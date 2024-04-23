
"use strict";

let GetAssembleState = require('./GetAssembleState.js')
let TrainStopLocation = require('./TrainStopLocation.js')
let XGPillerCenter = require('./XGPillerCenter.js')
let MoveToNavPoint = require('./MoveToNavPoint.js')
let TunnelModel = require('./TunnelModel.js')
let RobotArmRest = require('./RobotArmRest.js')
let SoundAudioControl = require('./SoundAudioControl.js')
let CarBasePauseRecovery = require('./CarBasePauseRecovery.js')
let RobotArmSpeed = require('./RobotArmSpeed.js')
let RobotArmPlay = require('./RobotArmPlay.js')
let StopRecording = require('./StopRecording.js')
let TeachingRegframe = require('./TeachingRegframe.js')
let RobotStateSrv = require('./RobotStateSrv.js')
let CurrentImagePoint = require('./CurrentImagePoint.js')
let CameraDataCollect = require('./CameraDataCollect.js')
let SafeDistanceSet = require('./SafeDistanceSet.js')
let XGGoToElevator = require('./XGGoToElevator.js')
let XGAuxUtility = require('./XGAuxUtility.js')
let RobotArmEnable = require('./RobotArmEnable.js')
let TakeAPicture = require('./TakeAPicture.js')
let TakeAPointCloud = require('./TakeAPointCloud.js')
let EmergencyStop = require('./EmergencyStop.js')
let LiftkitLimitPosition = require('./LiftkitLimitPosition.js')
let CollisionTest = require('./CollisionTest.js')
let StartRecording = require('./StartRecording.js')
let TaskPauseRecovery = require('./TaskPauseRecovery.js')
let SetNavMode = require('./SetNavMode.js')
let XGGoToCharge = require('./XGGoToCharge.js')
let TakePictures = require('./TakePictures.js')
let WorkshopMap = require('./WorkshopMap.js')
let RobotArmAcqModelLoad = require('./RobotArmAcqModelLoad.js')
let BollardHoming = require('./BollardHoming.js')
let XGMoveTask = require('./XGMoveTask.js')
let ChannelAligning = require('./ChannelAligning.js')
let HardwareAndNodeStateDiagnosis = require('./HardwareAndNodeStateDiagnosis.js')
let SwitchMap = require('./SwitchMap.js')
let PresetStopLocation = require('./PresetStopLocation.js')
let potential_cloud = require('./potential_cloud.js')
let RobotArmAcqMove = require('./RobotArmAcqMove.js')
let GetNavMode = require('./GetNavMode.js')
let ReturnJointAnglesAndPose = require('./ReturnJointAnglesAndPose.js')
let GetCurrentMapList = require('./GetCurrentMapList.js')
let XGLandMarkSearch = require('./XGLandMarkSearch.js')
let RobotArmTeaching = require('./RobotArmTeaching.js')
let LoadJson = require('./LoadJson.js')
let LiftkitUpDown = require('./LiftkitUpDown.js')
let BollardPauseRecvTerm = require('./BollardPauseRecvTerm.js')
let RobotArmHomeCheck = require('./RobotArmHomeCheck.js')
let GetBollardState = require('./GetBollardState.js')
let ChannelMap = require('./ChannelMap.js')
let CurrentTeachingStopLocation = require('./CurrentTeachingStopLocation.js')
let LidarDataCollect = require('./LidarDataCollect.js')
let RobotArmAcqReady = require('./RobotArmAcqReady.js')
let RobotArmAcqPauseRecovery = require('./RobotArmAcqPauseRecovery.js')
let GetSetLightBarColor = require('./GetSetLightBarColor.js')
let LidarPerception = require('./LidarPerception.js')
let potential = require('./potential.js')
let BogieModel = require('./BogieModel.js')
let RobotArmStandby = require('./RobotArmStandby.js')
let CameraTargetOrder = require('./CameraTargetOrder.js')
let Interploate = require('./Interploate.js')
let GetSetAntiCollisionWheel = require('./GetSetAntiCollisionWheel.js')
let SpeedScale = require('./SpeedScale.js')
let TrainTypeMap = require('./TrainTypeMap.js')
let RobotArmClearError = require('./RobotArmClearError.js')
let FindPoints = require('./FindPoints.js')
let CameraPcdFlag = require('./CameraPcdFlag.js')
let ChassisStateSrv = require('./ChassisStateSrv.js')
let PcdRegistration = require('./PcdRegistration.js')
let XGSwitchMap = require('./XGSwitchMap.js')
let getMultiJointData = require('./getMultiJointData.js')
let CurrentPoseAndFrame = require('./CurrentPoseAndFrame.js')
let BogieAligning = require('./BogieAligning.js')
let FastLioOdometry = require('./FastLioOdometry.js')

module.exports = {
  GetAssembleState: GetAssembleState,
  TrainStopLocation: TrainStopLocation,
  XGPillerCenter: XGPillerCenter,
  MoveToNavPoint: MoveToNavPoint,
  TunnelModel: TunnelModel,
  RobotArmRest: RobotArmRest,
  SoundAudioControl: SoundAudioControl,
  CarBasePauseRecovery: CarBasePauseRecovery,
  RobotArmSpeed: RobotArmSpeed,
  RobotArmPlay: RobotArmPlay,
  StopRecording: StopRecording,
  TeachingRegframe: TeachingRegframe,
  RobotStateSrv: RobotStateSrv,
  CurrentImagePoint: CurrentImagePoint,
  CameraDataCollect: CameraDataCollect,
  SafeDistanceSet: SafeDistanceSet,
  XGGoToElevator: XGGoToElevator,
  XGAuxUtility: XGAuxUtility,
  RobotArmEnable: RobotArmEnable,
  TakeAPicture: TakeAPicture,
  TakeAPointCloud: TakeAPointCloud,
  EmergencyStop: EmergencyStop,
  LiftkitLimitPosition: LiftkitLimitPosition,
  CollisionTest: CollisionTest,
  StartRecording: StartRecording,
  TaskPauseRecovery: TaskPauseRecovery,
  SetNavMode: SetNavMode,
  XGGoToCharge: XGGoToCharge,
  TakePictures: TakePictures,
  WorkshopMap: WorkshopMap,
  RobotArmAcqModelLoad: RobotArmAcqModelLoad,
  BollardHoming: BollardHoming,
  XGMoveTask: XGMoveTask,
  ChannelAligning: ChannelAligning,
  HardwareAndNodeStateDiagnosis: HardwareAndNodeStateDiagnosis,
  SwitchMap: SwitchMap,
  PresetStopLocation: PresetStopLocation,
  potential_cloud: potential_cloud,
  RobotArmAcqMove: RobotArmAcqMove,
  GetNavMode: GetNavMode,
  ReturnJointAnglesAndPose: ReturnJointAnglesAndPose,
  GetCurrentMapList: GetCurrentMapList,
  XGLandMarkSearch: XGLandMarkSearch,
  RobotArmTeaching: RobotArmTeaching,
  LoadJson: LoadJson,
  LiftkitUpDown: LiftkitUpDown,
  BollardPauseRecvTerm: BollardPauseRecvTerm,
  RobotArmHomeCheck: RobotArmHomeCheck,
  GetBollardState: GetBollardState,
  ChannelMap: ChannelMap,
  CurrentTeachingStopLocation: CurrentTeachingStopLocation,
  LidarDataCollect: LidarDataCollect,
  RobotArmAcqReady: RobotArmAcqReady,
  RobotArmAcqPauseRecovery: RobotArmAcqPauseRecovery,
  GetSetLightBarColor: GetSetLightBarColor,
  LidarPerception: LidarPerception,
  potential: potential,
  BogieModel: BogieModel,
  RobotArmStandby: RobotArmStandby,
  CameraTargetOrder: CameraTargetOrder,
  Interploate: Interploate,
  GetSetAntiCollisionWheel: GetSetAntiCollisionWheel,
  SpeedScale: SpeedScale,
  TrainTypeMap: TrainTypeMap,
  RobotArmClearError: RobotArmClearError,
  FindPoints: FindPoints,
  CameraPcdFlag: CameraPcdFlag,
  ChassisStateSrv: ChassisStateSrv,
  PcdRegistration: PcdRegistration,
  XGSwitchMap: XGSwitchMap,
  getMultiJointData: getMultiJointData,
  CurrentPoseAndFrame: CurrentPoseAndFrame,
  BogieAligning: BogieAligning,
  FastLioOdometry: FastLioOdometry,
};
