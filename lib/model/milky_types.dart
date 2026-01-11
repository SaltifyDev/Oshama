// ignore_for_file: invalid_annotation_target
// Generated from Milky 1.1 (1.1.0)

import 'package:freezed_annotation/freezed_annotation.dart';

part 'milky_types.freezed.dart';
part 'milky_types.g.dart';

const milkyVersion = "1.1";
const milkyPackageVersion = "1.1.0";

@freezed
abstract class ApiGeneralResponse with _$ApiGeneralResponse {
  const factory ApiGeneralResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "retcode") required int retcode,
    @JsonKey(name: "data") Object? data,
    @JsonKey(name: "message") String? message,
  }) = _ApiGeneralResponse;

  factory ApiGeneralResponse.fromJson(Map<String, dynamic> json) => _$ApiGeneralResponseFromJson(json);
}

@freezed
abstract class ApiEmptyStruct with _$ApiEmptyStruct {
  const factory ApiEmptyStruct() = _ApiEmptyStruct;

  factory ApiEmptyStruct.fromJson(Map<String, dynamic> json) => _$ApiEmptyStructFromJson(json);
}

// ####################################
// Common Structs
// ####################################

@Freezed(unionKey: "event_type")
abstract class Event with _$Event {
  @FreezedUnionValue("bot_offline")
  const factory Event.botOffline({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventBotOfflineData data,
  }) = EventBotOffline;

  @FreezedUnionValue("message_receive")
  const factory Event.messageReceive({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required IncomingMessage data,
  }) = EventMessageReceive;

  @FreezedUnionValue("message_recall")
  const factory Event.messageRecall({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventMessageRecallData data,
  }) = EventMessageRecall;

  @FreezedUnionValue("friend_request")
  const factory Event.friendRequest({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventFriendRequestData data,
  }) = EventFriendRequest;

  @FreezedUnionValue("group_join_request")
  const factory Event.groupJoinRequest({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupJoinRequestData data,
  }) = EventGroupJoinRequest;

  @FreezedUnionValue("group_invited_join_request")
  const factory Event.groupInvitedJoinRequest({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupInvitedJoinRequestData data,
  }) = EventGroupInvitedJoinRequest;

  @FreezedUnionValue("group_invitation")
  const factory Event.groupInvitation({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupInvitationData data,
  }) = EventGroupInvitation;

  @FreezedUnionValue("friend_nudge")
  const factory Event.friendNudge({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventFriendNudgeData data,
  }) = EventFriendNudge;

  @FreezedUnionValue("friend_file_upload")
  const factory Event.friendFileUpload({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventFriendFileUploadData data,
  }) = EventFriendFileUpload;

  @FreezedUnionValue("group_admin_change")
  const factory Event.groupAdminChange({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupAdminChangeData data,
  }) = EventGroupAdminChange;

  @FreezedUnionValue("group_essence_message_change")
  const factory Event.groupEssenceMessageChange({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupEssenceMessageChangeData data,
  }) = EventGroupEssenceMessageChange;

  @FreezedUnionValue("group_member_increase")
  const factory Event.groupMemberIncrease({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupMemberIncreaseData data,
  }) = EventGroupMemberIncrease;

  @FreezedUnionValue("group_member_decrease")
  const factory Event.groupMemberDecrease({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupMemberDecreaseData data,
  }) = EventGroupMemberDecrease;

  @FreezedUnionValue("group_name_change")
  const factory Event.groupNameChange({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupNameChangeData data,
  }) = EventGroupNameChange;

  @FreezedUnionValue("group_message_reaction")
  const factory Event.groupMessageReaction({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupMessageReactionData data,
  }) = EventGroupMessageReaction;

  @FreezedUnionValue("group_mute")
  const factory Event.groupMute({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupMuteData data,
  }) = EventGroupMute;

  @FreezedUnionValue("group_whole_mute")
  const factory Event.groupWholeMute({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupWholeMuteData data,
  }) = EventGroupWholeMute;

  @FreezedUnionValue("group_nudge")
  const factory Event.groupNudge({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupNudgeData data,
  }) = EventGroupNudge;

  @FreezedUnionValue("group_file_upload")
  const factory Event.groupFileUpload({
    /// 事件 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 机器人 QQ 号
    @JsonKey(name: "self_id")
    required int selfId,
    @JsonKey(name: "data")
    required EventGroupFileUploadData data,
  }) = EventGroupFileUpload;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
abstract class EventBotOfflineData with _$EventBotOfflineData {
  const factory EventBotOfflineData({
    /// 下线原因
    @JsonKey(name: "reason")
    required String reason,
  }) = _EventBotOfflineData;

  factory EventBotOfflineData.fromJson(Map<String, dynamic> json) => _$EventBotOfflineDataFromJson(json);
}

@freezed
abstract class EventMessageRecallData with _$EventMessageRecallData {
  const factory EventMessageRecallData({
    /// 消息场景
    @JsonKey(name: "message_scene")
    required String messageScene,
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 被撤回的消息的发送者 QQ 号
    @JsonKey(name: "sender_id")
    required int senderId,
    /// 操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
    /// 撤回提示的后缀文本
    @JsonKey(name: "display_suffix")
    required String displaySuffix,
  }) = _EventMessageRecallData;

  factory EventMessageRecallData.fromJson(Map<String, dynamic> json) => _$EventMessageRecallDataFromJson(json);
}

@freezed
abstract class EventFriendRequestData with _$EventFriendRequestData {
  const factory EventFriendRequestData({
    /// 申请好友的用户 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
    /// 用户 UID
    @JsonKey(name: "initiator_uid")
    required String initiatorUid,
    /// 申请附加信息
    @JsonKey(name: "comment")
    required String comment,
    /// 申请来源
    @JsonKey(name: "via")
    required String via,
  }) = _EventFriendRequestData;

  factory EventFriendRequestData.fromJson(Map<String, dynamic> json) => _$EventFriendRequestDataFromJson(json);
}

@freezed
abstract class EventGroupJoinRequestData with _$EventGroupJoinRequestData {
  const factory EventGroupJoinRequestData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 请求对应的通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 请求是否被过滤（发起自风险账户）
    @JsonKey(name: "is_filtered")
    required bool isFiltered,
    /// 申请入群的用户 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
    /// 申请附加信息
    @JsonKey(name: "comment")
    required String comment,
  }) = _EventGroupJoinRequestData;

  factory EventGroupJoinRequestData.fromJson(Map<String, dynamic> json) => _$EventGroupJoinRequestDataFromJson(json);
}

@freezed
abstract class EventGroupInvitedJoinRequestData with _$EventGroupInvitedJoinRequestData {
  const factory EventGroupInvitedJoinRequestData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 请求对应的通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 邀请者 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
    /// 被邀请者 QQ 号
    @JsonKey(name: "target_user_id")
    required int targetUserId,
  }) = _EventGroupInvitedJoinRequestData;

  factory EventGroupInvitedJoinRequestData.fromJson(Map<String, dynamic> json) => _$EventGroupInvitedJoinRequestDataFromJson(json);
}

@freezed
abstract class EventGroupInvitationData with _$EventGroupInvitationData {
  const factory EventGroupInvitationData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 邀请序列号
    @JsonKey(name: "invitation_seq")
    required int invitationSeq,
    /// 邀请者 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
  }) = _EventGroupInvitationData;

  factory EventGroupInvitationData.fromJson(Map<String, dynamic> json) => _$EventGroupInvitationDataFromJson(json);
}

@freezed
abstract class EventFriendNudgeData with _$EventFriendNudgeData {
  const factory EventFriendNudgeData({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 是否是自己发送的戳一戳
    @JsonKey(name: "is_self_send")
    required bool isSelfSend,
    /// 是否是自己接收的戳一戳
    @JsonKey(name: "is_self_receive")
    required bool isSelfReceive,
    /// 戳一戳提示的动作文本
    @JsonKey(name: "display_action")
    required String displayAction,
    /// 戳一戳提示的后缀文本
    @JsonKey(name: "display_suffix")
    required String displaySuffix,
    /// 戳一戳提示的动作图片 URL，用于取代动作提示文本
    @JsonKey(name: "display_action_img_url")
    required String displayActionImgUrl,
  }) = _EventFriendNudgeData;

  factory EventFriendNudgeData.fromJson(Map<String, dynamic> json) => _$EventFriendNudgeDataFromJson(json);
}

@freezed
abstract class EventFriendFileUploadData with _$EventFriendFileUploadData {
  const factory EventFriendFileUploadData({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件名称
    @JsonKey(name: "file_name")
    required String fileName,
    /// 文件大小（字节）
    @JsonKey(name: "file_size")
    required int fileSize,
    /// 文件的 TriSHA1 哈希值
    @JsonKey(name: "file_hash")
    required String fileHash,
    /// 是否是自己发送的文件
    @JsonKey(name: "is_self")
    required bool isSelf,
  }) = _EventFriendFileUploadData;

  factory EventFriendFileUploadData.fromJson(Map<String, dynamic> json) => _$EventFriendFileUploadDataFromJson(json);
}

@freezed
abstract class EventGroupAdminChangeData with _$EventGroupAdminChangeData {
  const factory EventGroupAdminChangeData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发生变更的用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
    /// 是否被设置为管理员，`false` 表示被取消管理员
    @JsonKey(name: "is_set")
    required bool isSet,
  }) = _EventGroupAdminChangeData;

  factory EventGroupAdminChangeData.fromJson(Map<String, dynamic> json) => _$EventGroupAdminChangeDataFromJson(json);
}

@freezed
abstract class EventGroupEssenceMessageChangeData with _$EventGroupEssenceMessageChangeData {
  const factory EventGroupEssenceMessageChangeData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发生变更的消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
    /// 是否被设置为精华，`false` 表示被取消精华
    @JsonKey(name: "is_set")
    required bool isSet,
  }) = _EventGroupEssenceMessageChangeData;

  factory EventGroupEssenceMessageChangeData.fromJson(Map<String, dynamic> json) => _$EventGroupEssenceMessageChangeDataFromJson(json);
}

@freezed
abstract class EventGroupMemberIncreaseData with _$EventGroupMemberIncreaseData {
  const factory EventGroupMemberIncreaseData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发生变更的用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 管理员 QQ 号，如果是管理员同意入群
    @JsonKey(name: "operator_id")
    int? operatorId,
    /// 邀请者 QQ 号，如果是邀请入群
    @JsonKey(name: "invitor_id")
    int? invitorId,
  }) = _EventGroupMemberIncreaseData;

  factory EventGroupMemberIncreaseData.fromJson(Map<String, dynamic> json) => _$EventGroupMemberIncreaseDataFromJson(json);
}

@freezed
abstract class EventGroupMemberDecreaseData with _$EventGroupMemberDecreaseData {
  const factory EventGroupMemberDecreaseData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发生变更的用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 管理员 QQ 号，如果是管理员踢出
    @JsonKey(name: "operator_id")
    int? operatorId,
  }) = _EventGroupMemberDecreaseData;

  factory EventGroupMemberDecreaseData.fromJson(Map<String, dynamic> json) => _$EventGroupMemberDecreaseDataFromJson(json);
}

@freezed
abstract class EventGroupNameChangeData with _$EventGroupNameChangeData {
  const factory EventGroupNameChangeData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 新的群名称
    @JsonKey(name: "new_group_name")
    required String newGroupName,
    /// 操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
  }) = _EventGroupNameChangeData;

  factory EventGroupNameChangeData.fromJson(Map<String, dynamic> json) => _$EventGroupNameChangeDataFromJson(json);
}

@freezed
abstract class EventGroupMessageReactionData with _$EventGroupMessageReactionData {
  const factory EventGroupMessageReactionData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发送回应者 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 表情 ID
    @JsonKey(name: "face_id")
    required String faceId,
    /// 是否为添加，`false` 表示取消回应
    @JsonKey(name: "is_add")
    required bool isAdd,
  }) = _EventGroupMessageReactionData;

  factory EventGroupMessageReactionData.fromJson(Map<String, dynamic> json) => _$EventGroupMessageReactionDataFromJson(json);
}

@freezed
abstract class EventGroupMuteData with _$EventGroupMuteData {
  const factory EventGroupMuteData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发生变更的用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
    /// 禁言时长（秒），为 0 表示取消禁言
    @JsonKey(name: "duration")
    required int duration,
  }) = _EventGroupMuteData;

  factory EventGroupMuteData.fromJson(Map<String, dynamic> json) => _$EventGroupMuteDataFromJson(json);
}

@freezed
abstract class EventGroupWholeMuteData with _$EventGroupWholeMuteData {
  const factory EventGroupWholeMuteData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
    /// 是否全员禁言，`false` 表示取消全员禁言
    @JsonKey(name: "is_mute")
    required bool isMute,
  }) = _EventGroupWholeMuteData;

  factory EventGroupWholeMuteData.fromJson(Map<String, dynamic> json) => _$EventGroupWholeMuteDataFromJson(json);
}

@freezed
abstract class EventGroupNudgeData with _$EventGroupNudgeData {
  const factory EventGroupNudgeData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发送者 QQ 号
    @JsonKey(name: "sender_id")
    required int senderId,
    /// 接收者 QQ 号
    @JsonKey(name: "receiver_id")
    required int receiverId,
    /// 戳一戳提示的动作文本
    @JsonKey(name: "display_action")
    required String displayAction,
    /// 戳一戳提示的后缀文本
    @JsonKey(name: "display_suffix")
    required String displaySuffix,
    /// 戳一戳提示的动作图片 URL，用于取代动作提示文本
    @JsonKey(name: "display_action_img_url")
    required String displayActionImgUrl,
  }) = _EventGroupNudgeData;

  factory EventGroupNudgeData.fromJson(Map<String, dynamic> json) => _$EventGroupNudgeDataFromJson(json);
}

@freezed
abstract class EventGroupFileUploadData with _$EventGroupFileUploadData {
  const factory EventGroupFileUploadData({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 发送者 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件名称
    @JsonKey(name: "file_name")
    required String fileName,
    /// 文件大小（字节）
    @JsonKey(name: "file_size")
    required int fileSize,
  }) = _EventGroupFileUploadData;

  factory EventGroupFileUploadData.fromJson(Map<String, dynamic> json) => _$EventGroupFileUploadDataFromJson(json);
}


@freezed
abstract class FriendEntity with _$FriendEntity {
  const factory FriendEntity({
    /// 用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 用户昵称
    @JsonKey(name: "nickname")
    required String nickname,
    /// 用户性别
    @JsonKey(name: "sex")
    required String sex,
    /// 用户 QID
    @JsonKey(name: "qid")
    required String qid,
    /// 好友备注
    @JsonKey(name: "remark")
    required String remark,
    /// 好友分组
    @JsonKey(name: "category")
    required FriendCategoryEntity category,
  }) = _FriendEntity;

  factory FriendEntity.fromJson(Map<String, dynamic> json) => _$FriendEntityFromJson(json);
}

@freezed
abstract class FriendCategoryEntity with _$FriendCategoryEntity {
  const factory FriendCategoryEntity({
    /// 好友分组 ID
    @JsonKey(name: "category_id")
    required int categoryId,
    /// 好友分组名称
    @JsonKey(name: "category_name")
    required String categoryName,
  }) = _FriendCategoryEntity;

  factory FriendCategoryEntity.fromJson(Map<String, dynamic> json) => _$FriendCategoryEntityFromJson(json);
}

@freezed
abstract class GroupEntity with _$GroupEntity {
  const factory GroupEntity({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 群名称
    @JsonKey(name: "group_name")
    required String groupName,
    /// 群成员数量
    @JsonKey(name: "member_count")
    required int memberCount,
    /// 群容量
    @JsonKey(name: "max_member_count")
    required int maxMemberCount,
  }) = _GroupEntity;

  factory GroupEntity.fromJson(Map<String, dynamic> json) => _$GroupEntityFromJson(json);
}

@freezed
abstract class GroupMemberEntity with _$GroupMemberEntity {
  const factory GroupMemberEntity({
    /// 用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 用户昵称
    @JsonKey(name: "nickname")
    required String nickname,
    /// 用户性别
    @JsonKey(name: "sex")
    required String sex,
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 成员备注
    @JsonKey(name: "card")
    required String card,
    /// 专属头衔
    @JsonKey(name: "title")
    required String title,
    /// 群等级，注意和 QQ 等级区分
    @JsonKey(name: "level")
    required int level,
    /// 权限等级
    @JsonKey(name: "role")
    required String role,
    /// 入群时间，Unix 时间戳（秒）
    @JsonKey(name: "join_time")
    required int joinTime,
    /// 最后发言时间，Unix 时间戳（秒）
    @JsonKey(name: "last_sent_time")
    required int lastSentTime,
    /// 禁言结束时间，Unix 时间戳（秒）
    @JsonKey(name: "shut_up_end_time")
    int? shutUpEndTime,
  }) = _GroupMemberEntity;

  factory GroupMemberEntity.fromJson(Map<String, dynamic> json) => _$GroupMemberEntityFromJson(json);
}

@freezed
abstract class GroupAnnouncementEntity with _$GroupAnnouncementEntity {
  const factory GroupAnnouncementEntity({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 公告 ID
    @JsonKey(name: "announcement_id")
    required String announcementId,
    /// 发送者 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 公告内容
    @JsonKey(name: "content")
    required String content,
    /// 公告图片 URL
    @JsonKey(name: "image_url")
    String? imageUrl,
  }) = _GroupAnnouncementEntity;

  factory GroupAnnouncementEntity.fromJson(Map<String, dynamic> json) => _$GroupAnnouncementEntityFromJson(json);
}

@freezed
abstract class GroupFileEntity with _$GroupFileEntity {
  const factory GroupFileEntity({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件名称
    @JsonKey(name: "file_name")
    required String fileName,
    /// 父文件夹 ID
    @JsonKey(name: "parent_folder_id")
    required String parentFolderId,
    /// 文件大小（字节）
    @JsonKey(name: "file_size")
    required int fileSize,
    /// 上传时的 Unix 时间戳（秒）
    @JsonKey(name: "uploaded_time")
    required int uploadedTime,
    /// 过期时的 Unix 时间戳（秒）
    @JsonKey(name: "expire_time")
    int? expireTime,
    /// 上传者 QQ 号
    @JsonKey(name: "uploader_id")
    required int uploaderId,
    /// 下载次数
    @JsonKey(name: "downloaded_times")
    required int downloadedTimes,
  }) = _GroupFileEntity;

  factory GroupFileEntity.fromJson(Map<String, dynamic> json) => _$GroupFileEntityFromJson(json);
}

@freezed
abstract class GroupFolderEntity with _$GroupFolderEntity {
  const factory GroupFolderEntity({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件夹 ID
    @JsonKey(name: "folder_id")
    required String folderId,
    /// 父文件夹 ID
    @JsonKey(name: "parent_folder_id")
    required String parentFolderId,
    /// 文件夹名称
    @JsonKey(name: "folder_name")
    required String folderName,
    /// 创建时的 Unix 时间戳（秒）
    @JsonKey(name: "created_time")
    required int createdTime,
    /// 最后修改时的 Unix 时间戳（秒）
    @JsonKey(name: "last_modified_time")
    required int lastModifiedTime,
    /// 创建者 QQ 号
    @JsonKey(name: "creator_id")
    required int creatorId,
    /// 文件数量
    @JsonKey(name: "file_count")
    required int fileCount,
  }) = _GroupFolderEntity;

  factory GroupFolderEntity.fromJson(Map<String, dynamic> json) => _$GroupFolderEntityFromJson(json);
}

@freezed
abstract class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    /// 请求发起时的 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 请求发起者 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
    /// 请求发起者 UID
    @JsonKey(name: "initiator_uid")
    required String initiatorUid,
    /// 目标用户 QQ 号
    @JsonKey(name: "target_user_id")
    required int targetUserId,
    /// 目标用户 UID
    @JsonKey(name: "target_user_uid")
    required String targetUserUid,
    /// 请求状态
    @JsonKey(name: "state")
    required String state,
    /// 申请附加信息
    @JsonKey(name: "comment")
    required String comment,
    /// 申请来源
    @JsonKey(name: "via")
    required String via,
    /// 请求是否被过滤（发起自风险账户）
    @JsonKey(name: "is_filtered")
    required bool isFiltered,
  }) = _FriendRequest;

  factory FriendRequest.fromJson(Map<String, dynamic> json) => _$FriendRequestFromJson(json);
}

@Freezed(unionKey: "type")
abstract class GroupNotification with _$GroupNotification {
  @FreezedUnionValue("join_request")
  const factory GroupNotification.joinRequest({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 请求是否被过滤（发起自风险账户）
    @JsonKey(name: "is_filtered")
    required bool isFiltered,
    /// 发起者 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
    /// 请求状态
    @JsonKey(name: "state")
    required String state,
    /// 处理请求的管理员 QQ 号
    @JsonKey(name: "operator_id")
    int? operatorId,
    /// 入群请求附加信息
    @JsonKey(name: "comment")
    required String comment,
  }) = GroupNotificationJoinRequest;

  @FreezedUnionValue("admin_change")
  const factory GroupNotification.adminChange({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 被设置/取消用户 QQ 号
    @JsonKey(name: "target_user_id")
    required int targetUserId,
    /// 是否被设置为管理员，`false` 表示被取消管理员
    @JsonKey(name: "is_set")
    required bool isSet,
    /// 操作者（群主）QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
  }) = GroupNotificationAdminChange;

  @FreezedUnionValue("kick")
  const factory GroupNotification.kick({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 被移除用户 QQ 号
    @JsonKey(name: "target_user_id")
    required int targetUserId,
    /// 移除用户的管理员 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
  }) = GroupNotificationKick;

  @FreezedUnionValue("quit")
  const factory GroupNotification.quit({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 退群用户 QQ 号
    @JsonKey(name: "target_user_id")
    required int targetUserId,
  }) = GroupNotificationQuit;

  @FreezedUnionValue("invited_join_request")
  const factory GroupNotification.invitedJoinRequest({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 邀请者 QQ 号
    @JsonKey(name: "initiator_id")
    required int initiatorId,
    /// 被邀请用户 QQ 号
    @JsonKey(name: "target_user_id")
    required int targetUserId,
    /// 请求状态
    @JsonKey(name: "state")
    required String state,
    /// 处理请求的管理员 QQ 号
    @JsonKey(name: "operator_id")
    int? operatorId,
  }) = GroupNotificationInvitedJoinRequest;

  factory GroupNotification.fromJson(Map<String, dynamic> json) => _$GroupNotificationFromJson(json);
}


@Freezed(unionKey: "message_scene")
abstract class IncomingMessage with _$IncomingMessage {
  @FreezedUnionValue("friend")
  const factory IncomingMessage.friend({
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 发送者 QQ 号
    @JsonKey(name: "sender_id")
    required int senderId,
    /// 消息 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 消息段列表
    @JsonKey(name: "segments")
    required List<IncomingSegment> segments,
    /// 好友信息
    @JsonKey(name: "friend")
    required FriendEntity friend,
  }) = IncomingMessageFriend;

  @FreezedUnionValue("group")
  const factory IncomingMessage.group({
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 发送者 QQ 号
    @JsonKey(name: "sender_id")
    required int senderId,
    /// 消息 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 消息段列表
    @JsonKey(name: "segments")
    required List<IncomingSegment> segments,
    /// 群信息
    @JsonKey(name: "group")
    required GroupEntity group,
    /// 群成员信息
    @JsonKey(name: "group_member")
    required GroupMemberEntity groupMember,
  }) = IncomingMessageGroup;

  @FreezedUnionValue("temp")
  const factory IncomingMessage.temp({
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 发送者 QQ 号
    @JsonKey(name: "sender_id")
    required int senderId,
    /// 消息 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 消息段列表
    @JsonKey(name: "segments")
    required List<IncomingSegment> segments,
    /// 临时会话发送者的所在的群信息
    @JsonKey(name: "group")
    GroupEntity? group,
  }) = IncomingMessageTemp;

  factory IncomingMessage.fromJson(Map<String, dynamic> json) => _$IncomingMessageFromJson(json);
}


@freezed
abstract class IncomingForwardedMessage with _$IncomingForwardedMessage {
  const factory IncomingForwardedMessage({
    /// 发送者名称
    @JsonKey(name: "sender_name")
    required String senderName,
    /// 发送者头像 URL
    @JsonKey(name: "avatar_url")
    required String avatarUrl,
    /// 消息 Unix 时间戳（秒）
    @JsonKey(name: "time")
    required int time,
    /// 消息段列表
    @JsonKey(name: "segments")
    required List<IncomingSegment> segments,
  }) = _IncomingForwardedMessage;

  factory IncomingForwardedMessage.fromJson(Map<String, dynamic> json) => _$IncomingForwardedMessageFromJson(json);
}

@freezed
abstract class GroupEssenceMessage with _$GroupEssenceMessage {
  const factory GroupEssenceMessage({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 消息发送时的 Unix 时间戳（秒）
    @JsonKey(name: "message_time")
    required int messageTime,
    /// 发送者 QQ 号
    @JsonKey(name: "sender_id")
    required int senderId,
    /// 发送者名称
    @JsonKey(name: "sender_name")
    required String senderName,
    /// 设置精华的操作者 QQ 号
    @JsonKey(name: "operator_id")
    required int operatorId,
    /// 设置精华的操作者名称
    @JsonKey(name: "operator_name")
    required String operatorName,
    /// 消息被设置精华时的 Unix 时间戳（秒）
    @JsonKey(name: "operation_time")
    required int operationTime,
    /// 消息段列表
    @JsonKey(name: "segments")
    required List<IncomingSegment> segments,
  }) = _GroupEssenceMessage;

  factory GroupEssenceMessage.fromJson(Map<String, dynamic> json) => _$GroupEssenceMessageFromJson(json);
}

@Freezed(unionKey: "type")
abstract class IncomingSegment with _$IncomingSegment {
  @FreezedUnionValue("text")
  const factory IncomingSegment.text({
    @JsonKey(name: "data")
    required IncomingSegmentTextData data,
  }) = IncomingSegmentText;

  @FreezedUnionValue("mention")
  const factory IncomingSegment.mention({
    @JsonKey(name: "data")
    required IncomingSegmentMentionData data,
  }) = IncomingSegmentMention;

  @FreezedUnionValue("mention_all")
  const factory IncomingSegment.mentionAll({
    @JsonKey(name: "data")
    required IncomingSegmentMentionAllData data,
  }) = IncomingSegmentMentionAll;

  @FreezedUnionValue("face")
  const factory IncomingSegment.face({
    @JsonKey(name: "data")
    required IncomingSegmentFaceData data,
  }) = IncomingSegmentFace;

  @FreezedUnionValue("reply")
  const factory IncomingSegment.reply({
    @JsonKey(name: "data")
    required IncomingSegmentReplyData data,
  }) = IncomingSegmentReply;

  @FreezedUnionValue("image")
  const factory IncomingSegment.image({
    @JsonKey(name: "data")
    required IncomingSegmentImageData data,
  }) = IncomingSegmentImage;

  @FreezedUnionValue("record")
  const factory IncomingSegment.record({
    @JsonKey(name: "data")
    required IncomingSegmentRecordData data,
  }) = IncomingSegmentRecord;

  @FreezedUnionValue("video")
  const factory IncomingSegment.video({
    @JsonKey(name: "data")
    required IncomingSegmentVideoData data,
  }) = IncomingSegmentVideo;

  @FreezedUnionValue("file")
  const factory IncomingSegment.file({
    @JsonKey(name: "data")
    required IncomingSegmentFileData data,
  }) = IncomingSegmentFile;

  @FreezedUnionValue("forward")
  const factory IncomingSegment.forward({
    @JsonKey(name: "data")
    required IncomingSegmentForwardData data,
  }) = IncomingSegmentForward;

  @FreezedUnionValue("market_face")
  const factory IncomingSegment.marketFace({
    @JsonKey(name: "data")
    required IncomingSegmentMarketFaceData data,
  }) = IncomingSegmentMarketFace;

  @FreezedUnionValue("light_app")
  const factory IncomingSegment.lightApp({
    @JsonKey(name: "data")
    required IncomingSegmentLightAppData data,
  }) = IncomingSegmentLightApp;

  @FreezedUnionValue("xml")
  const factory IncomingSegment.xml({
    @JsonKey(name: "data")
    required IncomingSegmentXmlData data,
  }) = IncomingSegmentXml;

  factory IncomingSegment.fromJson(Map<String, dynamic> json) => _$IncomingSegmentFromJson(json);
}

@freezed
abstract class IncomingSegmentTextData with _$IncomingSegmentTextData {
  const factory IncomingSegmentTextData({
    /// 文本内容
    @JsonKey(name: "text")
    required String text,
  }) = _IncomingSegmentTextData;

  factory IncomingSegmentTextData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentTextDataFromJson(json);
}

@freezed
abstract class IncomingSegmentMentionData with _$IncomingSegmentMentionData {
  const factory IncomingSegmentMentionData({
    /// 提及的 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
  }) = _IncomingSegmentMentionData;

  factory IncomingSegmentMentionData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentMentionDataFromJson(json);
}

@freezed
abstract class IncomingSegmentMentionAllData with _$IncomingSegmentMentionAllData {
  const factory IncomingSegmentMentionAllData() = _IncomingSegmentMentionAllData;

  factory IncomingSegmentMentionAllData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentMentionAllDataFromJson(json);
}

@freezed
abstract class IncomingSegmentFaceData with _$IncomingSegmentFaceData {
  const factory IncomingSegmentFaceData({
    /// 表情 ID
    @JsonKey(name: "face_id")
    required String faceId,
    /// 是否为超级表情
    @JsonKey(name: "is_large")
    required bool isLarge,
  }) = _IncomingSegmentFaceData;

  factory IncomingSegmentFaceData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentFaceDataFromJson(json);
}

@freezed
abstract class IncomingSegmentReplyData with _$IncomingSegmentReplyData {
  const factory IncomingSegmentReplyData({
    /// 被引用的消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
  }) = _IncomingSegmentReplyData;

  factory IncomingSegmentReplyData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentReplyDataFromJson(json);
}

@freezed
abstract class IncomingSegmentImageData with _$IncomingSegmentImageData {
  const factory IncomingSegmentImageData({
    /// 资源 ID
    @JsonKey(name: "resource_id")
    required String resourceId,
    /// 临时 URL
    @JsonKey(name: "temp_url")
    required String tempUrl,
    /// 图片宽度
    @JsonKey(name: "width")
    required int width,
    /// 图片高度
    @JsonKey(name: "height")
    required int height,
    /// 图片预览文本
    @JsonKey(name: "summary")
    required String summary,
    /// 图片类型
    @JsonKey(name: "sub_type")
    required String subType,
  }) = _IncomingSegmentImageData;

  factory IncomingSegmentImageData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentImageDataFromJson(json);
}

@freezed
abstract class IncomingSegmentRecordData with _$IncomingSegmentRecordData {
  const factory IncomingSegmentRecordData({
    /// 资源 ID
    @JsonKey(name: "resource_id")
    required String resourceId,
    /// 临时 URL
    @JsonKey(name: "temp_url")
    required String tempUrl,
    /// 语音时长（秒）
    @JsonKey(name: "duration")
    required int duration,
  }) = _IncomingSegmentRecordData;

  factory IncomingSegmentRecordData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentRecordDataFromJson(json);
}

@freezed
abstract class IncomingSegmentVideoData with _$IncomingSegmentVideoData {
  const factory IncomingSegmentVideoData({
    /// 资源 ID
    @JsonKey(name: "resource_id")
    required String resourceId,
    /// 临时 URL
    @JsonKey(name: "temp_url")
    required String tempUrl,
    /// 视频宽度
    @JsonKey(name: "width")
    required int width,
    /// 视频高度
    @JsonKey(name: "height")
    required int height,
    /// 视频时长（秒）
    @JsonKey(name: "duration")
    required int duration,
  }) = _IncomingSegmentVideoData;

  factory IncomingSegmentVideoData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentVideoDataFromJson(json);
}

@freezed
abstract class IncomingSegmentFileData with _$IncomingSegmentFileData {
  const factory IncomingSegmentFileData({
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件名称
    @JsonKey(name: "file_name")
    required String fileName,
    /// 文件大小（字节）
    @JsonKey(name: "file_size")
    required int fileSize,
    /// 文件的 TriSHA1 哈希值，仅在私聊文件中存在
    @JsonKey(name: "file_hash")
    String? fileHash,
  }) = _IncomingSegmentFileData;

  factory IncomingSegmentFileData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentFileDataFromJson(json);
}

@freezed
abstract class IncomingSegmentForwardData with _$IncomingSegmentForwardData {
  const factory IncomingSegmentForwardData({
    /// 合并转发 ID
    @JsonKey(name: "forward_id")
    required String forwardId,
    /// 合并转发标题
    @JsonKey(name: "title")
    required String title,
    /// 合并转发预览文本
    @JsonKey(name: "preview")
    required List<String> preview,
    /// 合并转发摘要
    @JsonKey(name: "summary")
    required String summary,
  }) = _IncomingSegmentForwardData;

  factory IncomingSegmentForwardData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentForwardDataFromJson(json);
}

@freezed
abstract class IncomingSegmentMarketFaceData with _$IncomingSegmentMarketFaceData {
  const factory IncomingSegmentMarketFaceData({
    /// 市场表情包 ID
    @JsonKey(name: "emoji_package_id")
    required int emojiPackageId,
    /// 市场表情 ID
    @JsonKey(name: "emoji_id")
    required String emojiId,
    /// 市场表情 Key
    @JsonKey(name: "key")
    required String key,
    /// 市场表情预览文本
    @JsonKey(name: "summary")
    required String summary,
    /// 市场表情 URL
    @JsonKey(name: "url")
    required String url,
  }) = _IncomingSegmentMarketFaceData;

  factory IncomingSegmentMarketFaceData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentMarketFaceDataFromJson(json);
}

@freezed
abstract class IncomingSegmentLightAppData with _$IncomingSegmentLightAppData {
  const factory IncomingSegmentLightAppData({
    /// 小程序名称
    @JsonKey(name: "app_name")
    required String appName,
    /// 小程序 JSON 数据
    @JsonKey(name: "json_payload")
    required String jsonPayload,
  }) = _IncomingSegmentLightAppData;

  factory IncomingSegmentLightAppData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentLightAppDataFromJson(json);
}

@freezed
abstract class IncomingSegmentXmlData with _$IncomingSegmentXmlData {
  const factory IncomingSegmentXmlData({
    /// 服务 ID
    @JsonKey(name: "service_id")
    required int serviceId,
    /// XML 数据
    @JsonKey(name: "xml_payload")
    required String xmlPayload,
  }) = _IncomingSegmentXmlData;

  factory IncomingSegmentXmlData.fromJson(Map<String, dynamic> json) => _$IncomingSegmentXmlDataFromJson(json);
}


@freezed
abstract class OutgoingForwardedMessage with _$OutgoingForwardedMessage {
  const factory OutgoingForwardedMessage({
    /// 发送者 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 发送者名称
    @JsonKey(name: "sender_name")
    required String senderName,
    /// 消息段列表
    @JsonKey(name: "segments")
    required List<OutgoingSegment> segments,
  }) = _OutgoingForwardedMessage;

  factory OutgoingForwardedMessage.fromJson(Map<String, dynamic> json) => _$OutgoingForwardedMessageFromJson(json);
}

@Freezed(unionKey: "type")
abstract class OutgoingSegment with _$OutgoingSegment {
  @FreezedUnionValue("text")
  const factory OutgoingSegment.text({
    @JsonKey(name: "data")
    required OutgoingSegmentTextData data,
  }) = OutgoingSegmentText;

  @FreezedUnionValue("mention")
  const factory OutgoingSegment.mention({
    @JsonKey(name: "data")
    required OutgoingSegmentMentionData data,
  }) = OutgoingSegmentMention;

  @FreezedUnionValue("mention_all")
  const factory OutgoingSegment.mentionAll({
    @JsonKey(name: "data")
    required OutgoingSegmentMentionAllData data,
  }) = OutgoingSegmentMentionAll;

  @FreezedUnionValue("face")
  const factory OutgoingSegment.face({
    @JsonKey(name: "data")
    required OutgoingSegmentFaceData data,
  }) = OutgoingSegmentFace;

  @FreezedUnionValue("reply")
  const factory OutgoingSegment.reply({
    @JsonKey(name: "data")
    required OutgoingSegmentReplyData data,
  }) = OutgoingSegmentReply;

  @FreezedUnionValue("image")
  const factory OutgoingSegment.image({
    @JsonKey(name: "data")
    required OutgoingSegmentImageData data,
  }) = OutgoingSegmentImage;

  @FreezedUnionValue("record")
  const factory OutgoingSegment.record({
    @JsonKey(name: "data")
    required OutgoingSegmentRecordData data,
  }) = OutgoingSegmentRecord;

  @FreezedUnionValue("video")
  const factory OutgoingSegment.video({
    @JsonKey(name: "data")
    required OutgoingSegmentVideoData data,
  }) = OutgoingSegmentVideo;

  @FreezedUnionValue("forward")
  const factory OutgoingSegment.forward({
    @JsonKey(name: "data")
    required OutgoingSegmentForwardData data,
  }) = OutgoingSegmentForward;

  factory OutgoingSegment.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentFromJson(json);
}

@freezed
abstract class OutgoingSegmentTextData with _$OutgoingSegmentTextData {
  const factory OutgoingSegmentTextData({
    /// 文本内容
    @JsonKey(name: "text")
    required String text,
  }) = _OutgoingSegmentTextData;

  factory OutgoingSegmentTextData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentTextDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentMentionData with _$OutgoingSegmentMentionData {
  const factory OutgoingSegmentMentionData({
    /// 提及的 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
  }) = _OutgoingSegmentMentionData;

  factory OutgoingSegmentMentionData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentMentionDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentMentionAllData with _$OutgoingSegmentMentionAllData {
  const factory OutgoingSegmentMentionAllData() = _OutgoingSegmentMentionAllData;

  factory OutgoingSegmentMentionAllData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentMentionAllDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentFaceData with _$OutgoingSegmentFaceData {
  const factory OutgoingSegmentFaceData({
    /// 表情 ID
    @JsonKey(name: "face_id")
    required String faceId,
    /// 是否为超级表情
    @Default(false)
    @JsonKey(name: "is_large")
    bool isLarge,
  }) = _OutgoingSegmentFaceData;

  factory OutgoingSegmentFaceData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentFaceDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentReplyData with _$OutgoingSegmentReplyData {
  const factory OutgoingSegmentReplyData({
    /// 被引用的消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
  }) = _OutgoingSegmentReplyData;

  factory OutgoingSegmentReplyData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentReplyDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentImageData with _$OutgoingSegmentImageData {
  const factory OutgoingSegmentImageData({
    /// 文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "uri")
    required String uri,
    /// 图片类型
    @Default("normal")
    @JsonKey(name: "sub_type")
    String subType,
    /// 图片预览文本
    @JsonKey(name: "summary")
    String? summary,
  }) = _OutgoingSegmentImageData;

  factory OutgoingSegmentImageData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentImageDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentRecordData with _$OutgoingSegmentRecordData {
  const factory OutgoingSegmentRecordData({
    /// 文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "uri")
    required String uri,
  }) = _OutgoingSegmentRecordData;

  factory OutgoingSegmentRecordData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentRecordDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentVideoData with _$OutgoingSegmentVideoData {
  const factory OutgoingSegmentVideoData({
    /// 文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "uri")
    required String uri,
    /// 封面图片 URI
    @JsonKey(name: "thumb_uri")
    String? thumbUri,
  }) = _OutgoingSegmentVideoData;

  factory OutgoingSegmentVideoData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentVideoDataFromJson(json);
}

@freezed
abstract class OutgoingSegmentForwardData with _$OutgoingSegmentForwardData {
  const factory OutgoingSegmentForwardData({
    /// 合并转发消息段
    @JsonKey(name: "messages")
    required List<OutgoingForwardedMessage> messages,
  }) = _OutgoingSegmentForwardData;

  factory OutgoingSegmentForwardData.fromJson(Map<String, dynamic> json) => _$OutgoingSegmentForwardDataFromJson(json);
}


// ####################################
// API Input and Output Structs
// ####################################

// ---- 系统 API ----

typedef GetLoginInfoInput = ApiEmptyStruct;

@freezed
abstract class GetLoginInfoOutput with _$GetLoginInfoOutput {
  const factory GetLoginInfoOutput({
    /// 登录 QQ 号
    @JsonKey(name: "uin")
    required int uin,
    /// 登录昵称
    @JsonKey(name: "nickname")
    required String nickname,
  }) = _GetLoginInfoOutput;

  factory GetLoginInfoOutput.fromJson(Map<String, dynamic> json) => _$GetLoginInfoOutputFromJson(json);
}

typedef GetImplInfoInput = ApiEmptyStruct;

@freezed
abstract class GetImplInfoOutput with _$GetImplInfoOutput {
  const factory GetImplInfoOutput({
    /// 协议端名称
    @JsonKey(name: "impl_name")
    required String implName,
    /// 协议端版本
    @JsonKey(name: "impl_version")
    required String implVersion,
    /// 协议端使用的 QQ 协议版本
    @JsonKey(name: "qq_protocol_version")
    required String qqProtocolVersion,
    /// 协议端使用的 QQ 协议平台
    @JsonKey(name: "qq_protocol_type")
    required String qqProtocolType,
    /// 协议端实现的 Milky 协议版本，目前为 "1.1"
    @JsonKey(name: "milky_version")
    required String milkyVersion,
  }) = _GetImplInfoOutput;

  factory GetImplInfoOutput.fromJson(Map<String, dynamic> json) => _$GetImplInfoOutputFromJson(json);
}

@freezed
abstract class GetUserProfileInput with _$GetUserProfileInput {
  const factory GetUserProfileInput({
    /// 用户 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
  }) = _GetUserProfileInput;

  factory GetUserProfileInput.fromJson(Map<String, dynamic> json) => _$GetUserProfileInputFromJson(json);
}

@freezed
abstract class GetUserProfileOutput with _$GetUserProfileOutput {
  const factory GetUserProfileOutput({
    /// 昵称
    @JsonKey(name: "nickname")
    required String nickname,
    /// QID
    @JsonKey(name: "qid")
    required String qid,
    /// 年龄
    @JsonKey(name: "age")
    required int age,
    /// 性别
    @JsonKey(name: "sex")
    required String sex,
    /// 备注
    @JsonKey(name: "remark")
    required String remark,
    /// 个性签名
    @JsonKey(name: "bio")
    required String bio,
    /// QQ 等级
    @JsonKey(name: "level")
    required int level,
    /// 国家或地区
    @JsonKey(name: "country")
    required String country,
    /// 城市
    @JsonKey(name: "city")
    required String city,
    /// 学校
    @JsonKey(name: "school")
    required String school,
  }) = _GetUserProfileOutput;

  factory GetUserProfileOutput.fromJson(Map<String, dynamic> json) => _$GetUserProfileOutputFromJson(json);
}

@freezed
abstract class GetFriendListInput with _$GetFriendListInput {
  const factory GetFriendListInput({
    /// 是否强制不使用缓存
    @Default(false)
    @JsonKey(name: "no_cache")
    bool noCache,
  }) = _GetFriendListInput;

  factory GetFriendListInput.fromJson(Map<String, dynamic> json) => _$GetFriendListInputFromJson(json);
}

@freezed
abstract class GetFriendListOutput with _$GetFriendListOutput {
  const factory GetFriendListOutput({
    /// 好友列表
    @JsonKey(name: "friends")
    required List<FriendEntity> friends,
  }) = _GetFriendListOutput;

  factory GetFriendListOutput.fromJson(Map<String, dynamic> json) => _$GetFriendListOutputFromJson(json);
}

@freezed
abstract class GetFriendInfoInput with _$GetFriendInfoInput {
  const factory GetFriendInfoInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 是否强制不使用缓存
    @Default(false)
    @JsonKey(name: "no_cache")
    bool noCache,
  }) = _GetFriendInfoInput;

  factory GetFriendInfoInput.fromJson(Map<String, dynamic> json) => _$GetFriendInfoInputFromJson(json);
}

@freezed
abstract class GetFriendInfoOutput with _$GetFriendInfoOutput {
  const factory GetFriendInfoOutput({
    /// 好友信息
    @JsonKey(name: "friend")
    required FriendEntity friend,
  }) = _GetFriendInfoOutput;

  factory GetFriendInfoOutput.fromJson(Map<String, dynamic> json) => _$GetFriendInfoOutputFromJson(json);
}

@freezed
abstract class GetGroupListInput with _$GetGroupListInput {
  const factory GetGroupListInput({
    /// 是否强制不使用缓存
    @Default(false)
    @JsonKey(name: "no_cache")
    bool noCache,
  }) = _GetGroupListInput;

  factory GetGroupListInput.fromJson(Map<String, dynamic> json) => _$GetGroupListInputFromJson(json);
}

@freezed
abstract class GetGroupListOutput with _$GetGroupListOutput {
  const factory GetGroupListOutput({
    /// 群列表
    @JsonKey(name: "groups")
    required List<GroupEntity> groups,
  }) = _GetGroupListOutput;

  factory GetGroupListOutput.fromJson(Map<String, dynamic> json) => _$GetGroupListOutputFromJson(json);
}

@freezed
abstract class GetGroupInfoInput with _$GetGroupInfoInput {
  const factory GetGroupInfoInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 是否强制不使用缓存
    @Default(false)
    @JsonKey(name: "no_cache")
    bool noCache,
  }) = _GetGroupInfoInput;

  factory GetGroupInfoInput.fromJson(Map<String, dynamic> json) => _$GetGroupInfoInputFromJson(json);
}

@freezed
abstract class GetGroupInfoOutput with _$GetGroupInfoOutput {
  const factory GetGroupInfoOutput({
    /// 群信息
    @JsonKey(name: "group")
    required GroupEntity group,
  }) = _GetGroupInfoOutput;

  factory GetGroupInfoOutput.fromJson(Map<String, dynamic> json) => _$GetGroupInfoOutputFromJson(json);
}

@freezed
abstract class GetGroupMemberListInput with _$GetGroupMemberListInput {
  const factory GetGroupMemberListInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 是否强制不使用缓存
    @Default(false)
    @JsonKey(name: "no_cache")
    bool noCache,
  }) = _GetGroupMemberListInput;

  factory GetGroupMemberListInput.fromJson(Map<String, dynamic> json) => _$GetGroupMemberListInputFromJson(json);
}

@freezed
abstract class GetGroupMemberListOutput with _$GetGroupMemberListOutput {
  const factory GetGroupMemberListOutput({
    /// 群成员列表
    @JsonKey(name: "members")
    required List<GroupMemberEntity> members,
  }) = _GetGroupMemberListOutput;

  factory GetGroupMemberListOutput.fromJson(Map<String, dynamic> json) => _$GetGroupMemberListOutputFromJson(json);
}

@freezed
abstract class GetGroupMemberInfoInput with _$GetGroupMemberInfoInput {
  const factory GetGroupMemberInfoInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 群成员 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 是否强制不使用缓存
    @Default(false)
    @JsonKey(name: "no_cache")
    bool noCache,
  }) = _GetGroupMemberInfoInput;

  factory GetGroupMemberInfoInput.fromJson(Map<String, dynamic> json) => _$GetGroupMemberInfoInputFromJson(json);
}

@freezed
abstract class GetGroupMemberInfoOutput with _$GetGroupMemberInfoOutput {
  const factory GetGroupMemberInfoOutput({
    /// 群成员信息
    @JsonKey(name: "member")
    required GroupMemberEntity member,
  }) = _GetGroupMemberInfoOutput;

  factory GetGroupMemberInfoOutput.fromJson(Map<String, dynamic> json) => _$GetGroupMemberInfoOutputFromJson(json);
}

@freezed
abstract class SetAvatarInput with _$SetAvatarInput {
  const factory SetAvatarInput({
    /// 头像文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "uri")
    required String uri,
  }) = _SetAvatarInput;

  factory SetAvatarInput.fromJson(Map<String, dynamic> json) => _$SetAvatarInputFromJson(json);
}

typedef SetAvatarOutput = ApiEmptyStruct;

@freezed
abstract class SetNicknameInput with _$SetNicknameInput {
  const factory SetNicknameInput({
    /// 新昵称
    @JsonKey(name: "new_nickname")
    required String newNickname,
  }) = _SetNicknameInput;

  factory SetNicknameInput.fromJson(Map<String, dynamic> json) => _$SetNicknameInputFromJson(json);
}

typedef SetNicknameOutput = ApiEmptyStruct;

@freezed
abstract class SetBioInput with _$SetBioInput {
  const factory SetBioInput({
    /// 新个性签名
    @JsonKey(name: "new_bio")
    required String newBio,
  }) = _SetBioInput;

  factory SetBioInput.fromJson(Map<String, dynamic> json) => _$SetBioInputFromJson(json);
}

typedef SetBioOutput = ApiEmptyStruct;

typedef GetCustomFaceUrlListInput = ApiEmptyStruct;

@freezed
abstract class GetCustomFaceUrlListOutput with _$GetCustomFaceUrlListOutput {
  const factory GetCustomFaceUrlListOutput({
    /// 自定义表情 URL 列表
    @JsonKey(name: "urls")
    required List<String> urls,
  }) = _GetCustomFaceUrlListOutput;

  factory GetCustomFaceUrlListOutput.fromJson(Map<String, dynamic> json) => _$GetCustomFaceUrlListOutputFromJson(json);
}

@freezed
abstract class GetCookiesInput with _$GetCookiesInput {
  const factory GetCookiesInput({
    /// 需要获取 Cookies 的域名
    @JsonKey(name: "domain")
    required String domain,
  }) = _GetCookiesInput;

  factory GetCookiesInput.fromJson(Map<String, dynamic> json) => _$GetCookiesInputFromJson(json);
}

@freezed
abstract class GetCookiesOutput with _$GetCookiesOutput {
  const factory GetCookiesOutput({
    /// 域名对应的 Cookies 字符串
    @JsonKey(name: "cookies")
    required String cookies,
  }) = _GetCookiesOutput;

  factory GetCookiesOutput.fromJson(Map<String, dynamic> json) => _$GetCookiesOutputFromJson(json);
}

typedef GetCsrfTokenInput = ApiEmptyStruct;

@freezed
abstract class GetCsrfTokenOutput with _$GetCsrfTokenOutput {
  const factory GetCsrfTokenOutput({
    /// CSRF Token
    @JsonKey(name: "csrf_token")
    required String csrfToken,
  }) = _GetCsrfTokenOutput;

  factory GetCsrfTokenOutput.fromJson(Map<String, dynamic> json) => _$GetCsrfTokenOutputFromJson(json);
}

// ---- 消息 API ----

@freezed
abstract class SendPrivateMessageInput with _$SendPrivateMessageInput {
  const factory SendPrivateMessageInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 消息内容
    @JsonKey(name: "message")
    required List<OutgoingSegment> message,
  }) = _SendPrivateMessageInput;

  factory SendPrivateMessageInput.fromJson(Map<String, dynamic> json) => _$SendPrivateMessageInputFromJson(json);
}

@freezed
abstract class SendPrivateMessageOutput with _$SendPrivateMessageOutput {
  const factory SendPrivateMessageOutput({
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 消息发送时间
    @JsonKey(name: "time")
    required int time,
  }) = _SendPrivateMessageOutput;

  factory SendPrivateMessageOutput.fromJson(Map<String, dynamic> json) => _$SendPrivateMessageOutputFromJson(json);
}

@freezed
abstract class SendGroupMessageInput with _$SendGroupMessageInput {
  const factory SendGroupMessageInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 消息内容
    @JsonKey(name: "message")
    required List<OutgoingSegment> message,
  }) = _SendGroupMessageInput;

  factory SendGroupMessageInput.fromJson(Map<String, dynamic> json) => _$SendGroupMessageInputFromJson(json);
}

@freezed
abstract class SendGroupMessageOutput with _$SendGroupMessageOutput {
  const factory SendGroupMessageOutput({
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 消息发送时间
    @JsonKey(name: "time")
    required int time,
  }) = _SendGroupMessageOutput;

  factory SendGroupMessageOutput.fromJson(Map<String, dynamic> json) => _$SendGroupMessageOutputFromJson(json);
}

@freezed
abstract class RecallPrivateMessageInput with _$RecallPrivateMessageInput {
  const factory RecallPrivateMessageInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
  }) = _RecallPrivateMessageInput;

  factory RecallPrivateMessageInput.fromJson(Map<String, dynamic> json) => _$RecallPrivateMessageInputFromJson(json);
}

typedef RecallPrivateMessageOutput = ApiEmptyStruct;

@freezed
abstract class RecallGroupMessageInput with _$RecallGroupMessageInput {
  const factory RecallGroupMessageInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
  }) = _RecallGroupMessageInput;

  factory RecallGroupMessageInput.fromJson(Map<String, dynamic> json) => _$RecallGroupMessageInputFromJson(json);
}

typedef RecallGroupMessageOutput = ApiEmptyStruct;

@freezed
abstract class GetMessageInput with _$GetMessageInput {
  const factory GetMessageInput({
    /// 消息场景
    @JsonKey(name: "message_scene")
    required String messageScene,
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
  }) = _GetMessageInput;

  factory GetMessageInput.fromJson(Map<String, dynamic> json) => _$GetMessageInputFromJson(json);
}

@freezed
abstract class GetMessageOutput with _$GetMessageOutput {
  const factory GetMessageOutput({
    /// 消息内容
    @JsonKey(name: "message")
    required IncomingMessage message,
  }) = _GetMessageOutput;

  factory GetMessageOutput.fromJson(Map<String, dynamic> json) => _$GetMessageOutputFromJson(json);
}

@freezed
abstract class GetHistoryMessagesInput with _$GetHistoryMessagesInput {
  const factory GetHistoryMessagesInput({
    /// 消息场景
    @JsonKey(name: "message_scene")
    required String messageScene,
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 起始消息序列号，由此开始从新到旧查询，不提供则从最新消息开始
    @JsonKey(name: "start_message_seq")
    int? startMessageSeq,
    /// 期望获取到的消息数量，最多 30 条
    @Default(20)
    @JsonKey(name: "limit")
    int limit,
  }) = _GetHistoryMessagesInput;

  factory GetHistoryMessagesInput.fromJson(Map<String, dynamic> json) => _$GetHistoryMessagesInputFromJson(json);
}

@freezed
abstract class GetHistoryMessagesOutput with _$GetHistoryMessagesOutput {
  const factory GetHistoryMessagesOutput({
    /// 获取到的消息（message_seq 升序排列），部分消息可能不存在，如撤回的消息
    @JsonKey(name: "messages")
    required List<IncomingMessage> messages,
    /// 下一页起始消息序列号
    @JsonKey(name: "next_message_seq")
    int? nextMessageSeq,
  }) = _GetHistoryMessagesOutput;

  factory GetHistoryMessagesOutput.fromJson(Map<String, dynamic> json) => _$GetHistoryMessagesOutputFromJson(json);
}

@freezed
abstract class GetResourceTempUrlInput with _$GetResourceTempUrlInput {
  const factory GetResourceTempUrlInput({
    /// 资源 ID
    @JsonKey(name: "resource_id")
    required String resourceId,
  }) = _GetResourceTempUrlInput;

  factory GetResourceTempUrlInput.fromJson(Map<String, dynamic> json) => _$GetResourceTempUrlInputFromJson(json);
}

@freezed
abstract class GetResourceTempUrlOutput with _$GetResourceTempUrlOutput {
  const factory GetResourceTempUrlOutput({
    /// 临时资源链接
    @JsonKey(name: "url")
    required String url,
  }) = _GetResourceTempUrlOutput;

  factory GetResourceTempUrlOutput.fromJson(Map<String, dynamic> json) => _$GetResourceTempUrlOutputFromJson(json);
}

@freezed
abstract class GetForwardedMessagesInput with _$GetForwardedMessagesInput {
  const factory GetForwardedMessagesInput({
    /// 转发消息 ID
    @JsonKey(name: "forward_id")
    required String forwardId,
  }) = _GetForwardedMessagesInput;

  factory GetForwardedMessagesInput.fromJson(Map<String, dynamic> json) => _$GetForwardedMessagesInputFromJson(json);
}

@freezed
abstract class GetForwardedMessagesOutput with _$GetForwardedMessagesOutput {
  const factory GetForwardedMessagesOutput({
    /// 转发消息内容
    @JsonKey(name: "messages")
    required List<IncomingForwardedMessage> messages,
  }) = _GetForwardedMessagesOutput;

  factory GetForwardedMessagesOutput.fromJson(Map<String, dynamic> json) => _$GetForwardedMessagesOutputFromJson(json);
}

@freezed
abstract class MarkMessageAsReadInput with _$MarkMessageAsReadInput {
  const factory MarkMessageAsReadInput({
    /// 消息场景
    @JsonKey(name: "message_scene")
    required String messageScene,
    /// 好友 QQ 号或群号
    @JsonKey(name: "peer_id")
    required int peerId,
    /// 标为已读的消息序列号，该消息及更早的消息将被标记为已读
    @JsonKey(name: "message_seq")
    required int messageSeq,
  }) = _MarkMessageAsReadInput;

  factory MarkMessageAsReadInput.fromJson(Map<String, dynamic> json) => _$MarkMessageAsReadInputFromJson(json);
}

typedef MarkMessageAsReadOutput = ApiEmptyStruct;

// ---- 好友 API ----

@freezed
abstract class SendFriendNudgeInput with _$SendFriendNudgeInput {
  const factory SendFriendNudgeInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 是否戳自己
    @Default(false)
    @JsonKey(name: "is_self")
    bool isSelf,
  }) = _SendFriendNudgeInput;

  factory SendFriendNudgeInput.fromJson(Map<String, dynamic> json) => _$SendFriendNudgeInputFromJson(json);
}

typedef SendFriendNudgeOutput = ApiEmptyStruct;

@freezed
abstract class SendProfileLikeInput with _$SendProfileLikeInput {
  const factory SendProfileLikeInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 点赞数量
    @Default(1)
    @JsonKey(name: "count")
    int count,
  }) = _SendProfileLikeInput;

  factory SendProfileLikeInput.fromJson(Map<String, dynamic> json) => _$SendProfileLikeInputFromJson(json);
}

typedef SendProfileLikeOutput = ApiEmptyStruct;

@freezed
abstract class DeleteFriendInput with _$DeleteFriendInput {
  const factory DeleteFriendInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
  }) = _DeleteFriendInput;

  factory DeleteFriendInput.fromJson(Map<String, dynamic> json) => _$DeleteFriendInputFromJson(json);
}

typedef DeleteFriendOutput = ApiEmptyStruct;

@freezed
abstract class GetFriendRequestsInput with _$GetFriendRequestsInput {
  const factory GetFriendRequestsInput({
    /// 获取的最大请求数量
    @Default(20)
    @JsonKey(name: "limit")
    int limit,
    /// `true` 表示只获取被过滤（由风险账号发起）的通知，`false` 表示只获取未被过滤的通知
    @Default(false)
    @JsonKey(name: "is_filtered")
    bool isFiltered,
  }) = _GetFriendRequestsInput;

  factory GetFriendRequestsInput.fromJson(Map<String, dynamic> json) => _$GetFriendRequestsInputFromJson(json);
}

@freezed
abstract class GetFriendRequestsOutput with _$GetFriendRequestsOutput {
  const factory GetFriendRequestsOutput({
    /// 好友请求列表
    @JsonKey(name: "requests")
    required List<FriendRequest> requests,
  }) = _GetFriendRequestsOutput;

  factory GetFriendRequestsOutput.fromJson(Map<String, dynamic> json) => _$GetFriendRequestsOutputFromJson(json);
}

@freezed
abstract class AcceptFriendRequestInput with _$AcceptFriendRequestInput {
  const factory AcceptFriendRequestInput({
    /// 请求发起者 UID
    @JsonKey(name: "initiator_uid")
    required String initiatorUid,
    /// 是否是被过滤的请求
    @Default(false)
    @JsonKey(name: "is_filtered")
    bool isFiltered,
  }) = _AcceptFriendRequestInput;

  factory AcceptFriendRequestInput.fromJson(Map<String, dynamic> json) => _$AcceptFriendRequestInputFromJson(json);
}

typedef AcceptFriendRequestOutput = ApiEmptyStruct;

@freezed
abstract class RejectFriendRequestInput with _$RejectFriendRequestInput {
  const factory RejectFriendRequestInput({
    /// 请求发起者 UID
    @JsonKey(name: "initiator_uid")
    required String initiatorUid,
    /// 是否是被过滤的请求
    @Default(false)
    @JsonKey(name: "is_filtered")
    bool isFiltered,
    /// 拒绝理由
    @JsonKey(name: "reason")
    String? reason,
  }) = _RejectFriendRequestInput;

  factory RejectFriendRequestInput.fromJson(Map<String, dynamic> json) => _$RejectFriendRequestInputFromJson(json);
}

typedef RejectFriendRequestOutput = ApiEmptyStruct;

// ---- 群聊 API ----

@freezed
abstract class SetGroupNameInput with _$SetGroupNameInput {
  const factory SetGroupNameInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 新群名称
    @JsonKey(name: "new_group_name")
    required String newGroupName,
  }) = _SetGroupNameInput;

  factory SetGroupNameInput.fromJson(Map<String, dynamic> json) => _$SetGroupNameInputFromJson(json);
}

typedef SetGroupNameOutput = ApiEmptyStruct;

@freezed
abstract class SetGroupAvatarInput with _$SetGroupAvatarInput {
  const factory SetGroupAvatarInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 头像文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "image_uri")
    required String imageUri,
  }) = _SetGroupAvatarInput;

  factory SetGroupAvatarInput.fromJson(Map<String, dynamic> json) => _$SetGroupAvatarInputFromJson(json);
}

typedef SetGroupAvatarOutput = ApiEmptyStruct;

@freezed
abstract class SetGroupMemberCardInput with _$SetGroupMemberCardInput {
  const factory SetGroupMemberCardInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 被设置的群成员 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 新群名片
    @JsonKey(name: "card")
    required String card,
  }) = _SetGroupMemberCardInput;

  factory SetGroupMemberCardInput.fromJson(Map<String, dynamic> json) => _$SetGroupMemberCardInputFromJson(json);
}

typedef SetGroupMemberCardOutput = ApiEmptyStruct;

@freezed
abstract class SetGroupMemberSpecialTitleInput with _$SetGroupMemberSpecialTitleInput {
  const factory SetGroupMemberSpecialTitleInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 被设置的群成员 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 新专属头衔
    @JsonKey(name: "special_title")
    required String specialTitle,
  }) = _SetGroupMemberSpecialTitleInput;

  factory SetGroupMemberSpecialTitleInput.fromJson(Map<String, dynamic> json) => _$SetGroupMemberSpecialTitleInputFromJson(json);
}

typedef SetGroupMemberSpecialTitleOutput = ApiEmptyStruct;

@freezed
abstract class SetGroupMemberAdminInput with _$SetGroupMemberAdminInput {
  const factory SetGroupMemberAdminInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 被设置的 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 是否设置为管理员，`false` 表示取消管理员
    @Default(true)
    @JsonKey(name: "is_set")
    bool isSet,
  }) = _SetGroupMemberAdminInput;

  factory SetGroupMemberAdminInput.fromJson(Map<String, dynamic> json) => _$SetGroupMemberAdminInputFromJson(json);
}

typedef SetGroupMemberAdminOutput = ApiEmptyStruct;

@freezed
abstract class SetGroupMemberMuteInput with _$SetGroupMemberMuteInput {
  const factory SetGroupMemberMuteInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 被设置的 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 禁言持续时间（秒），设为 `0` 为取消禁言
    @Default(0)
    @JsonKey(name: "duration")
    int duration,
  }) = _SetGroupMemberMuteInput;

  factory SetGroupMemberMuteInput.fromJson(Map<String, dynamic> json) => _$SetGroupMemberMuteInputFromJson(json);
}

typedef SetGroupMemberMuteOutput = ApiEmptyStruct;

@freezed
abstract class SetGroupWholeMuteInput with _$SetGroupWholeMuteInput {
  const factory SetGroupWholeMuteInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 是否开启全员禁言，`false` 表示取消全员禁言
    @Default(true)
    @JsonKey(name: "is_mute")
    bool isMute,
  }) = _SetGroupWholeMuteInput;

  factory SetGroupWholeMuteInput.fromJson(Map<String, dynamic> json) => _$SetGroupWholeMuteInputFromJson(json);
}

typedef SetGroupWholeMuteOutput = ApiEmptyStruct;

@freezed
abstract class KickGroupMemberInput with _$KickGroupMemberInput {
  const factory KickGroupMemberInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 被踢的 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 是否拒绝加群申请，`false` 表示不拒绝
    @Default(false)
    @JsonKey(name: "reject_add_request")
    bool rejectAddRequest,
  }) = _KickGroupMemberInput;

  factory KickGroupMemberInput.fromJson(Map<String, dynamic> json) => _$KickGroupMemberInputFromJson(json);
}

typedef KickGroupMemberOutput = ApiEmptyStruct;

@freezed
abstract class GetGroupAnnouncementsInput with _$GetGroupAnnouncementsInput {
  const factory GetGroupAnnouncementsInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
  }) = _GetGroupAnnouncementsInput;

  factory GetGroupAnnouncementsInput.fromJson(Map<String, dynamic> json) => _$GetGroupAnnouncementsInputFromJson(json);
}

@freezed
abstract class GetGroupAnnouncementsOutput with _$GetGroupAnnouncementsOutput {
  const factory GetGroupAnnouncementsOutput({
    /// 群公告列表
    @JsonKey(name: "announcements")
    required List<GroupAnnouncementEntity> announcements,
  }) = _GetGroupAnnouncementsOutput;

  factory GetGroupAnnouncementsOutput.fromJson(Map<String, dynamic> json) => _$GetGroupAnnouncementsOutputFromJson(json);
}

@freezed
abstract class SendGroupAnnouncementInput with _$SendGroupAnnouncementInput {
  const factory SendGroupAnnouncementInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 公告内容
    @JsonKey(name: "content")
    required String content,
    /// 公告附带图像文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "image_uri")
    String? imageUri,
  }) = _SendGroupAnnouncementInput;

  factory SendGroupAnnouncementInput.fromJson(Map<String, dynamic> json) => _$SendGroupAnnouncementInputFromJson(json);
}

typedef SendGroupAnnouncementOutput = ApiEmptyStruct;

@freezed
abstract class DeleteGroupAnnouncementInput with _$DeleteGroupAnnouncementInput {
  const factory DeleteGroupAnnouncementInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 公告 ID
    @JsonKey(name: "announcement_id")
    required String announcementId,
  }) = _DeleteGroupAnnouncementInput;

  factory DeleteGroupAnnouncementInput.fromJson(Map<String, dynamic> json) => _$DeleteGroupAnnouncementInputFromJson(json);
}

typedef DeleteGroupAnnouncementOutput = ApiEmptyStruct;

@freezed
abstract class GetGroupEssenceMessagesInput with _$GetGroupEssenceMessagesInput {
  const factory GetGroupEssenceMessagesInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 页码索引，从 0 开始
    @JsonKey(name: "page_index")
    required int pageIndex,
    /// 每页包含的精华消息数量
    @JsonKey(name: "page_size")
    required int pageSize,
  }) = _GetGroupEssenceMessagesInput;

  factory GetGroupEssenceMessagesInput.fromJson(Map<String, dynamic> json) => _$GetGroupEssenceMessagesInputFromJson(json);
}

@freezed
abstract class GetGroupEssenceMessagesOutput with _$GetGroupEssenceMessagesOutput {
  const factory GetGroupEssenceMessagesOutput({
    /// 精华消息列表
    @JsonKey(name: "messages")
    required List<GroupEssenceMessage> messages,
    /// 是否已到最后一页
    @JsonKey(name: "is_end")
    required bool isEnd,
  }) = _GetGroupEssenceMessagesOutput;

  factory GetGroupEssenceMessagesOutput.fromJson(Map<String, dynamic> json) => _$GetGroupEssenceMessagesOutputFromJson(json);
}

@freezed
abstract class SetGroupEssenceMessageInput with _$SetGroupEssenceMessageInput {
  const factory SetGroupEssenceMessageInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 是否设置为精华消息，`false` 表示取消精华
    @Default(true)
    @JsonKey(name: "is_set")
    bool isSet,
  }) = _SetGroupEssenceMessageInput;

  factory SetGroupEssenceMessageInput.fromJson(Map<String, dynamic> json) => _$SetGroupEssenceMessageInputFromJson(json);
}

typedef SetGroupEssenceMessageOutput = ApiEmptyStruct;

@freezed
abstract class QuitGroupInput with _$QuitGroupInput {
  const factory QuitGroupInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
  }) = _QuitGroupInput;

  factory QuitGroupInput.fromJson(Map<String, dynamic> json) => _$QuitGroupInputFromJson(json);
}

typedef QuitGroupOutput = ApiEmptyStruct;

@freezed
abstract class SendGroupMessageReactionInput with _$SendGroupMessageReactionInput {
  const factory SendGroupMessageReactionInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 要回应的消息序列号
    @JsonKey(name: "message_seq")
    required int messageSeq,
    /// 表情 ID
    @JsonKey(name: "reaction")
    required String reaction,
    /// 是否添加表情，`false` 表示取消
    @Default(true)
    @JsonKey(name: "is_add")
    bool isAdd,
  }) = _SendGroupMessageReactionInput;

  factory SendGroupMessageReactionInput.fromJson(Map<String, dynamic> json) => _$SendGroupMessageReactionInputFromJson(json);
}

typedef SendGroupMessageReactionOutput = ApiEmptyStruct;

@freezed
abstract class SendGroupNudgeInput with _$SendGroupNudgeInput {
  const factory SendGroupNudgeInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 被戳的群成员 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
  }) = _SendGroupNudgeInput;

  factory SendGroupNudgeInput.fromJson(Map<String, dynamic> json) => _$SendGroupNudgeInputFromJson(json);
}

typedef SendGroupNudgeOutput = ApiEmptyStruct;

@freezed
abstract class GetGroupNotificationsInput with _$GetGroupNotificationsInput {
  const factory GetGroupNotificationsInput({
    /// 起始通知序列号
    @JsonKey(name: "start_notification_seq")
    int? startNotificationSeq,
    /// `true` 表示只获取被过滤（由风险账号发起）的通知，`false` 表示只获取未被过滤的通知
    @Default(false)
    @JsonKey(name: "is_filtered")
    bool isFiltered,
    /// 获取的最大通知数量
    @Default(20)
    @JsonKey(name: "limit")
    int limit,
  }) = _GetGroupNotificationsInput;

  factory GetGroupNotificationsInput.fromJson(Map<String, dynamic> json) => _$GetGroupNotificationsInputFromJson(json);
}

@freezed
abstract class GetGroupNotificationsOutput with _$GetGroupNotificationsOutput {
  const factory GetGroupNotificationsOutput({
    /// 获取到的群通知（notification_seq 降序排列），序列号不一定连续
    @JsonKey(name: "notifications")
    required List<GroupNotification> notifications,
    /// 下一页起始通知序列号
    @JsonKey(name: "next_notification_seq")
    int? nextNotificationSeq,
  }) = _GetGroupNotificationsOutput;

  factory GetGroupNotificationsOutput.fromJson(Map<String, dynamic> json) => _$GetGroupNotificationsOutputFromJson(json);
}

@freezed
abstract class AcceptGroupRequestInput with _$AcceptGroupRequestInput {
  const factory AcceptGroupRequestInput({
    /// 请求对应的通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 请求对应的通知类型
    @JsonKey(name: "notification_type")
    required String notificationType,
    /// 请求所在的群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 是否是被过滤的请求
    @Default(false)
    @JsonKey(name: "is_filtered")
    bool isFiltered,
  }) = _AcceptGroupRequestInput;

  factory AcceptGroupRequestInput.fromJson(Map<String, dynamic> json) => _$AcceptGroupRequestInputFromJson(json);
}

typedef AcceptGroupRequestOutput = ApiEmptyStruct;

@freezed
abstract class RejectGroupRequestInput with _$RejectGroupRequestInput {
  const factory RejectGroupRequestInput({
    /// 请求对应的通知序列号
    @JsonKey(name: "notification_seq")
    required int notificationSeq,
    /// 请求对应的通知类型
    @JsonKey(name: "notification_type")
    required String notificationType,
    /// 请求所在的群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 是否是被过滤的请求
    @Default(false)
    @JsonKey(name: "is_filtered")
    bool isFiltered,
    /// 拒绝理由
    @JsonKey(name: "reason")
    String? reason,
  }) = _RejectGroupRequestInput;

  factory RejectGroupRequestInput.fromJson(Map<String, dynamic> json) => _$RejectGroupRequestInputFromJson(json);
}

typedef RejectGroupRequestOutput = ApiEmptyStruct;

@freezed
abstract class AcceptGroupInvitationInput with _$AcceptGroupInvitationInput {
  const factory AcceptGroupInvitationInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 邀请序列号
    @JsonKey(name: "invitation_seq")
    required int invitationSeq,
  }) = _AcceptGroupInvitationInput;

  factory AcceptGroupInvitationInput.fromJson(Map<String, dynamic> json) => _$AcceptGroupInvitationInputFromJson(json);
}

typedef AcceptGroupInvitationOutput = ApiEmptyStruct;

@freezed
abstract class RejectGroupInvitationInput with _$RejectGroupInvitationInput {
  const factory RejectGroupInvitationInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 邀请序列号
    @JsonKey(name: "invitation_seq")
    required int invitationSeq,
  }) = _RejectGroupInvitationInput;

  factory RejectGroupInvitationInput.fromJson(Map<String, dynamic> json) => _$RejectGroupInvitationInputFromJson(json);
}

typedef RejectGroupInvitationOutput = ApiEmptyStruct;

// ---- 文件 API ----

@freezed
abstract class UploadPrivateFileInput with _$UploadPrivateFileInput {
  const factory UploadPrivateFileInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "file_uri")
    required String fileUri,
    /// 文件名称
    @JsonKey(name: "file_name")
    required String fileName,
  }) = _UploadPrivateFileInput;

  factory UploadPrivateFileInput.fromJson(Map<String, dynamic> json) => _$UploadPrivateFileInputFromJson(json);
}

@freezed
abstract class UploadPrivateFileOutput with _$UploadPrivateFileOutput {
  const factory UploadPrivateFileOutput({
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
  }) = _UploadPrivateFileOutput;

  factory UploadPrivateFileOutput.fromJson(Map<String, dynamic> json) => _$UploadPrivateFileOutputFromJson(json);
}

@freezed
abstract class UploadGroupFileInput with _$UploadGroupFileInput {
  const factory UploadGroupFileInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 目标文件夹 ID
    @Default("/")
    @JsonKey(name: "parent_folder_id")
    String parentFolderId,
    /// 文件 URI，支持 `file://` `http(s)://` `base64://` 三种格式
    @JsonKey(name: "file_uri")
    required String fileUri,
    /// 文件名称
    @JsonKey(name: "file_name")
    required String fileName,
  }) = _UploadGroupFileInput;

  factory UploadGroupFileInput.fromJson(Map<String, dynamic> json) => _$UploadGroupFileInputFromJson(json);
}

@freezed
abstract class UploadGroupFileOutput with _$UploadGroupFileOutput {
  const factory UploadGroupFileOutput({
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
  }) = _UploadGroupFileOutput;

  factory UploadGroupFileOutput.fromJson(Map<String, dynamic> json) => _$UploadGroupFileOutputFromJson(json);
}

@freezed
abstract class GetPrivateFileDownloadUrlInput with _$GetPrivateFileDownloadUrlInput {
  const factory GetPrivateFileDownloadUrlInput({
    /// 好友 QQ 号
    @JsonKey(name: "user_id")
    required int userId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件的 TriSHA1 哈希值
    @JsonKey(name: "file_hash")
    required String fileHash,
  }) = _GetPrivateFileDownloadUrlInput;

  factory GetPrivateFileDownloadUrlInput.fromJson(Map<String, dynamic> json) => _$GetPrivateFileDownloadUrlInputFromJson(json);
}

@freezed
abstract class GetPrivateFileDownloadUrlOutput with _$GetPrivateFileDownloadUrlOutput {
  const factory GetPrivateFileDownloadUrlOutput({
    /// 文件下载链接
    @JsonKey(name: "download_url")
    required String downloadUrl,
  }) = _GetPrivateFileDownloadUrlOutput;

  factory GetPrivateFileDownloadUrlOutput.fromJson(Map<String, dynamic> json) => _$GetPrivateFileDownloadUrlOutputFromJson(json);
}

@freezed
abstract class GetGroupFileDownloadUrlInput with _$GetGroupFileDownloadUrlInput {
  const factory GetGroupFileDownloadUrlInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
  }) = _GetGroupFileDownloadUrlInput;

  factory GetGroupFileDownloadUrlInput.fromJson(Map<String, dynamic> json) => _$GetGroupFileDownloadUrlInputFromJson(json);
}

@freezed
abstract class GetGroupFileDownloadUrlOutput with _$GetGroupFileDownloadUrlOutput {
  const factory GetGroupFileDownloadUrlOutput({
    /// 文件下载链接
    @JsonKey(name: "download_url")
    required String downloadUrl,
  }) = _GetGroupFileDownloadUrlOutput;

  factory GetGroupFileDownloadUrlOutput.fromJson(Map<String, dynamic> json) => _$GetGroupFileDownloadUrlOutputFromJson(json);
}

@freezed
abstract class GetGroupFilesInput with _$GetGroupFilesInput {
  const factory GetGroupFilesInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 父文件夹 ID
    @Default("/")
    @JsonKey(name: "parent_folder_id")
    String parentFolderId,
  }) = _GetGroupFilesInput;

  factory GetGroupFilesInput.fromJson(Map<String, dynamic> json) => _$GetGroupFilesInputFromJson(json);
}

@freezed
abstract class GetGroupFilesOutput with _$GetGroupFilesOutput {
  const factory GetGroupFilesOutput({
    /// 文件列表
    @JsonKey(name: "files")
    required List<GroupFileEntity> files,
    /// 文件夹列表
    @JsonKey(name: "folders")
    required List<GroupFolderEntity> folders,
  }) = _GetGroupFilesOutput;

  factory GetGroupFilesOutput.fromJson(Map<String, dynamic> json) => _$GetGroupFilesOutputFromJson(json);
}

@freezed
abstract class MoveGroupFileInput with _$MoveGroupFileInput {
  const factory MoveGroupFileInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件所在的文件夹 ID
    @Default("/")
    @JsonKey(name: "parent_folder_id")
    String parentFolderId,
    /// 目标文件夹 ID
    @Default("/")
    @JsonKey(name: "target_folder_id")
    String targetFolderId,
  }) = _MoveGroupFileInput;

  factory MoveGroupFileInput.fromJson(Map<String, dynamic> json) => _$MoveGroupFileInputFromJson(json);
}

typedef MoveGroupFileOutput = ApiEmptyStruct;

@freezed
abstract class RenameGroupFileInput with _$RenameGroupFileInput {
  const factory RenameGroupFileInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
    /// 文件所在的文件夹 ID
    @Default("/")
    @JsonKey(name: "parent_folder_id")
    String parentFolderId,
    /// 新文件名称
    @JsonKey(name: "new_file_name")
    required String newFileName,
  }) = _RenameGroupFileInput;

  factory RenameGroupFileInput.fromJson(Map<String, dynamic> json) => _$RenameGroupFileInputFromJson(json);
}

typedef RenameGroupFileOutput = ApiEmptyStruct;

@freezed
abstract class DeleteGroupFileInput with _$DeleteGroupFileInput {
  const factory DeleteGroupFileInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件 ID
    @JsonKey(name: "file_id")
    required String fileId,
  }) = _DeleteGroupFileInput;

  factory DeleteGroupFileInput.fromJson(Map<String, dynamic> json) => _$DeleteGroupFileInputFromJson(json);
}

typedef DeleteGroupFileOutput = ApiEmptyStruct;

@freezed
abstract class CreateGroupFolderInput with _$CreateGroupFolderInput {
  const factory CreateGroupFolderInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件夹名称
    @JsonKey(name: "folder_name")
    required String folderName,
  }) = _CreateGroupFolderInput;

  factory CreateGroupFolderInput.fromJson(Map<String, dynamic> json) => _$CreateGroupFolderInputFromJson(json);
}

@freezed
abstract class CreateGroupFolderOutput with _$CreateGroupFolderOutput {
  const factory CreateGroupFolderOutput({
    /// 文件夹 ID
    @JsonKey(name: "folder_id")
    required String folderId,
  }) = _CreateGroupFolderOutput;

  factory CreateGroupFolderOutput.fromJson(Map<String, dynamic> json) => _$CreateGroupFolderOutputFromJson(json);
}

@freezed
abstract class RenameGroupFolderInput with _$RenameGroupFolderInput {
  const factory RenameGroupFolderInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件夹 ID
    @JsonKey(name: "folder_id")
    required String folderId,
    /// 新文件夹名
    @JsonKey(name: "new_folder_name")
    required String newFolderName,
  }) = _RenameGroupFolderInput;

  factory RenameGroupFolderInput.fromJson(Map<String, dynamic> json) => _$RenameGroupFolderInputFromJson(json);
}

typedef RenameGroupFolderOutput = ApiEmptyStruct;

@freezed
abstract class DeleteGroupFolderInput with _$DeleteGroupFolderInput {
  const factory DeleteGroupFolderInput({
    /// 群号
    @JsonKey(name: "group_id")
    required int groupId,
    /// 文件夹 ID
    @JsonKey(name: "folder_id")
    required String folderId,
  }) = _DeleteGroupFolderInput;

  factory DeleteGroupFolderInput.fromJson(Map<String, dynamic> json) => _$DeleteGroupFolderInputFromJson(json);
}

typedef DeleteGroupFolderOutput = ApiEmptyStruct;

// ####################################
// API Endpoint Constants
// ####################################

class ApiEndpoint<T, R> {
  final String endpoint;
  final T Function(Map<String, dynamic>) fromJsonInput;
  final Map<String, dynamic> Function(R) toJsonOutput;

  const ApiEndpoint(this.endpoint, this.fromJsonInput, this.toJsonOutput);

  /// 获取登录信息
  static final getLoginInfo = ApiEndpoint(
    "/get_login_info",
    GetLoginInfoInput.fromJson,
    (GetLoginInfoOutput output) => output.toJson(),
  );
  /// 获取协议端信息
  static final getImplInfo = ApiEndpoint(
    "/get_impl_info",
    GetImplInfoInput.fromJson,
    (GetImplInfoOutput output) => output.toJson(),
  );
  /// 获取用户个人信息
  static final getUserProfile = ApiEndpoint(
    "/get_user_profile",
    GetUserProfileInput.fromJson,
    (GetUserProfileOutput output) => output.toJson(),
  );
  /// 获取好友列表
  static final getFriendList = ApiEndpoint(
    "/get_friend_list",
    GetFriendListInput.fromJson,
    (GetFriendListOutput output) => output.toJson(),
  );
  /// 获取好友信息
  static final getFriendInfo = ApiEndpoint(
    "/get_friend_info",
    GetFriendInfoInput.fromJson,
    (GetFriendInfoOutput output) => output.toJson(),
  );
  /// 获取群列表
  static final getGroupList = ApiEndpoint(
    "/get_group_list",
    GetGroupListInput.fromJson,
    (GetGroupListOutput output) => output.toJson(),
  );
  /// 获取群信息
  static final getGroupInfo = ApiEndpoint(
    "/get_group_info",
    GetGroupInfoInput.fromJson,
    (GetGroupInfoOutput output) => output.toJson(),
  );
  /// 获取群成员列表
  static final getGroupMemberList = ApiEndpoint(
    "/get_group_member_list",
    GetGroupMemberListInput.fromJson,
    (GetGroupMemberListOutput output) => output.toJson(),
  );
  /// 获取群成员信息
  static final getGroupMemberInfo = ApiEndpoint(
    "/get_group_member_info",
    GetGroupMemberInfoInput.fromJson,
    (GetGroupMemberInfoOutput output) => output.toJson(),
  );
  /// 设置 QQ 账号头像
  static final setAvatar = ApiEndpoint(
    "/set_avatar",
    SetAvatarInput.fromJson,
    (SetAvatarOutput output) => output.toJson(),
  );
  /// 设置 QQ 账号昵称
  static final setNickname = ApiEndpoint(
    "/set_nickname",
    SetNicknameInput.fromJson,
    (SetNicknameOutput output) => output.toJson(),
  );
  /// 设置 QQ 账号个性签名
  static final setBio = ApiEndpoint(
    "/set_bio",
    SetBioInput.fromJson,
    (SetBioOutput output) => output.toJson(),
  );
  /// 获取自定义表情 URL 列表
  static final getCustomFaceUrlList = ApiEndpoint(
    "/get_custom_face_url_list",
    GetCustomFaceUrlListInput.fromJson,
    (GetCustomFaceUrlListOutput output) => output.toJson(),
  );
  /// 获取 Cookies
  static final getCookies = ApiEndpoint(
    "/get_cookies",
    GetCookiesInput.fromJson,
    (GetCookiesOutput output) => output.toJson(),
  );
  /// 获取 CSRF Token
  static final getCsrfToken = ApiEndpoint(
    "/get_csrf_token",
    GetCsrfTokenInput.fromJson,
    (GetCsrfTokenOutput output) => output.toJson(),
  );
  /// 发送私聊消息
  static final sendPrivateMessage = ApiEndpoint(
    "/send_private_message",
    SendPrivateMessageInput.fromJson,
    (SendPrivateMessageOutput output) => output.toJson(),
  );
  /// 发送群聊消息
  static final sendGroupMessage = ApiEndpoint(
    "/send_group_message",
    SendGroupMessageInput.fromJson,
    (SendGroupMessageOutput output) => output.toJson(),
  );
  /// 撤回私聊消息
  static final recallPrivateMessage = ApiEndpoint(
    "/recall_private_message",
    RecallPrivateMessageInput.fromJson,
    (RecallPrivateMessageOutput output) => output.toJson(),
  );
  /// 撤回群聊消息
  static final recallGroupMessage = ApiEndpoint(
    "/recall_group_message",
    RecallGroupMessageInput.fromJson,
    (RecallGroupMessageOutput output) => output.toJson(),
  );
  /// 获取消息
  static final getMessage = ApiEndpoint(
    "/get_message",
    GetMessageInput.fromJson,
    (GetMessageOutput output) => output.toJson(),
  );
  /// 获取历史消息列表
  static final getHistoryMessages = ApiEndpoint(
    "/get_history_messages",
    GetHistoryMessagesInput.fromJson,
    (GetHistoryMessagesOutput output) => output.toJson(),
  );
  /// 获取临时资源链接
  static final getResourceTempUrl = ApiEndpoint(
    "/get_resource_temp_url",
    GetResourceTempUrlInput.fromJson,
    (GetResourceTempUrlOutput output) => output.toJson(),
  );
  /// 获取合并转发消息内容
  static final getForwardedMessages = ApiEndpoint(
    "/get_forwarded_messages",
    GetForwardedMessagesInput.fromJson,
    (GetForwardedMessagesOutput output) => output.toJson(),
  );
  /// 标记消息为已读
  static final markMessageAsRead = ApiEndpoint(
    "/mark_message_as_read",
    MarkMessageAsReadInput.fromJson,
    (MarkMessageAsReadOutput output) => output.toJson(),
  );
  /// 发送好友戳一戳
  static final sendFriendNudge = ApiEndpoint(
    "/send_friend_nudge",
    SendFriendNudgeInput.fromJson,
    (SendFriendNudgeOutput output) => output.toJson(),
  );
  /// 发送名片点赞
  static final sendProfileLike = ApiEndpoint(
    "/send_profile_like",
    SendProfileLikeInput.fromJson,
    (SendProfileLikeOutput output) => output.toJson(),
  );
  /// 删除好友
  static final deleteFriend = ApiEndpoint(
    "/delete_friend",
    DeleteFriendInput.fromJson,
    (DeleteFriendOutput output) => output.toJson(),
  );
  /// 获取好友请求列表
  static final getFriendRequests = ApiEndpoint(
    "/get_friend_requests",
    GetFriendRequestsInput.fromJson,
    (GetFriendRequestsOutput output) => output.toJson(),
  );
  /// 同意好友请求
  static final acceptFriendRequest = ApiEndpoint(
    "/accept_friend_request",
    AcceptFriendRequestInput.fromJson,
    (AcceptFriendRequestOutput output) => output.toJson(),
  );
  /// 拒绝好友请求
  static final rejectFriendRequest = ApiEndpoint(
    "/reject_friend_request",
    RejectFriendRequestInput.fromJson,
    (RejectFriendRequestOutput output) => output.toJson(),
  );
  /// 设置群名称
  static final setGroupName = ApiEndpoint(
    "/set_group_name",
    SetGroupNameInput.fromJson,
    (SetGroupNameOutput output) => output.toJson(),
  );
  /// 设置群头像
  static final setGroupAvatar = ApiEndpoint(
    "/set_group_avatar",
    SetGroupAvatarInput.fromJson,
    (SetGroupAvatarOutput output) => output.toJson(),
  );
  /// 设置群名片
  static final setGroupMemberCard = ApiEndpoint(
    "/set_group_member_card",
    SetGroupMemberCardInput.fromJson,
    (SetGroupMemberCardOutput output) => output.toJson(),
  );
  /// 设置群成员专属头衔
  static final setGroupMemberSpecialTitle = ApiEndpoint(
    "/set_group_member_special_title",
    SetGroupMemberSpecialTitleInput.fromJson,
    (SetGroupMemberSpecialTitleOutput output) => output.toJson(),
  );
  /// 设置群管理员
  static final setGroupMemberAdmin = ApiEndpoint(
    "/set_group_member_admin",
    SetGroupMemberAdminInput.fromJson,
    (SetGroupMemberAdminOutput output) => output.toJson(),
  );
  /// 设置群成员禁言
  static final setGroupMemberMute = ApiEndpoint(
    "/set_group_member_mute",
    SetGroupMemberMuteInput.fromJson,
    (SetGroupMemberMuteOutput output) => output.toJson(),
  );
  /// 设置群全员禁言
  static final setGroupWholeMute = ApiEndpoint(
    "/set_group_whole_mute",
    SetGroupWholeMuteInput.fromJson,
    (SetGroupWholeMuteOutput output) => output.toJson(),
  );
  /// 踢出群成员
  static final kickGroupMember = ApiEndpoint(
    "/kick_group_member",
    KickGroupMemberInput.fromJson,
    (KickGroupMemberOutput output) => output.toJson(),
  );
  /// 获取群公告列表
  static final getGroupAnnouncements = ApiEndpoint(
    "/get_group_announcements",
    GetGroupAnnouncementsInput.fromJson,
    (GetGroupAnnouncementsOutput output) => output.toJson(),
  );
  /// 发送群公告
  static final sendGroupAnnouncement = ApiEndpoint(
    "/send_group_announcement",
    SendGroupAnnouncementInput.fromJson,
    (SendGroupAnnouncementOutput output) => output.toJson(),
  );
  /// 删除群公告
  static final deleteGroupAnnouncement = ApiEndpoint(
    "/delete_group_announcement",
    DeleteGroupAnnouncementInput.fromJson,
    (DeleteGroupAnnouncementOutput output) => output.toJson(),
  );
  /// 获取群精华消息列表
  static final getGroupEssenceMessages = ApiEndpoint(
    "/get_group_essence_messages",
    GetGroupEssenceMessagesInput.fromJson,
    (GetGroupEssenceMessagesOutput output) => output.toJson(),
  );
  /// 设置群精华消息
  static final setGroupEssenceMessage = ApiEndpoint(
    "/set_group_essence_message",
    SetGroupEssenceMessageInput.fromJson,
    (SetGroupEssenceMessageOutput output) => output.toJson(),
  );
  /// 退出群
  static final quitGroup = ApiEndpoint(
    "/quit_group",
    QuitGroupInput.fromJson,
    (QuitGroupOutput output) => output.toJson(),
  );
  /// 发送群消息表情回应
  static final sendGroupMessageReaction = ApiEndpoint(
    "/send_group_message_reaction",
    SendGroupMessageReactionInput.fromJson,
    (SendGroupMessageReactionOutput output) => output.toJson(),
  );
  /// 发送群戳一戳
  static final sendGroupNudge = ApiEndpoint(
    "/send_group_nudge",
    SendGroupNudgeInput.fromJson,
    (SendGroupNudgeOutput output) => output.toJson(),
  );
  /// 获取群通知列表
  static final getGroupNotifications = ApiEndpoint(
    "/get_group_notifications",
    GetGroupNotificationsInput.fromJson,
    (GetGroupNotificationsOutput output) => output.toJson(),
  );
  /// 同意入群/邀请他人入群请求
  static final acceptGroupRequest = ApiEndpoint(
    "/accept_group_request",
    AcceptGroupRequestInput.fromJson,
    (AcceptGroupRequestOutput output) => output.toJson(),
  );
  /// 拒绝入群/邀请他人入群请求
  static final rejectGroupRequest = ApiEndpoint(
    "/reject_group_request",
    RejectGroupRequestInput.fromJson,
    (RejectGroupRequestOutput output) => output.toJson(),
  );
  /// 同意他人邀请自身入群
  static final acceptGroupInvitation = ApiEndpoint(
    "/accept_group_invitation",
    AcceptGroupInvitationInput.fromJson,
    (AcceptGroupInvitationOutput output) => output.toJson(),
  );
  /// 拒绝他人邀请自身入群
  static final rejectGroupInvitation = ApiEndpoint(
    "/reject_group_invitation",
    RejectGroupInvitationInput.fromJson,
    (RejectGroupInvitationOutput output) => output.toJson(),
  );
  /// 上传私聊文件
  static final uploadPrivateFile = ApiEndpoint(
    "/upload_private_file",
    UploadPrivateFileInput.fromJson,
    (UploadPrivateFileOutput output) => output.toJson(),
  );
  /// 上传群文件
  static final uploadGroupFile = ApiEndpoint(
    "/upload_group_file",
    UploadGroupFileInput.fromJson,
    (UploadGroupFileOutput output) => output.toJson(),
  );
  /// 获取私聊文件下载链接
  static final getPrivateFileDownloadUrl = ApiEndpoint(
    "/get_private_file_download_url",
    GetPrivateFileDownloadUrlInput.fromJson,
    (GetPrivateFileDownloadUrlOutput output) => output.toJson(),
  );
  /// 获取群文件下载链接
  static final getGroupFileDownloadUrl = ApiEndpoint(
    "/get_group_file_download_url",
    GetGroupFileDownloadUrlInput.fromJson,
    (GetGroupFileDownloadUrlOutput output) => output.toJson(),
  );
  /// 获取群文件列表
  static final getGroupFiles = ApiEndpoint(
    "/get_group_files",
    GetGroupFilesInput.fromJson,
    (GetGroupFilesOutput output) => output.toJson(),
  );
  /// 移动群文件
  static final moveGroupFile = ApiEndpoint(
    "/move_group_file",
    MoveGroupFileInput.fromJson,
    (MoveGroupFileOutput output) => output.toJson(),
  );
  /// 重命名群文件
  static final renameGroupFile = ApiEndpoint(
    "/rename_group_file",
    RenameGroupFileInput.fromJson,
    (RenameGroupFileOutput output) => output.toJson(),
  );
  /// 删除群文件
  static final deleteGroupFile = ApiEndpoint(
    "/delete_group_file",
    DeleteGroupFileInput.fromJson,
    (DeleteGroupFileOutput output) => output.toJson(),
  );
  /// 创建群文件夹
  static final createGroupFolder = ApiEndpoint(
    "/create_group_folder",
    CreateGroupFolderInput.fromJson,
    (CreateGroupFolderOutput output) => output.toJson(),
  );
  /// 重命名群文件夹
  static final renameGroupFolder = ApiEndpoint(
    "/rename_group_folder",
    RenameGroupFolderInput.fromJson,
    (RenameGroupFolderOutput output) => output.toJson(),
  );
  /// 删除群文件夹
  static final deleteGroupFolder = ApiEndpoint(
    "/delete_group_folder",
    DeleteGroupFolderInput.fromJson,
    (DeleteGroupFolderOutput output) => output.toJson(),
  );
}
