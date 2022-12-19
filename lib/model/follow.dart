class Follow {
  Follow({
    required this.subscribeId,
    required this.fromUserId,
    required this.toUserId,
  });

  int subscribeId;
  int fromUserId;
  int toUserId;

  factory Follow.fromJson(Map<String, dynamic> json) => Follow(
        subscribeId: json["subscribeId"],
        fromUserId: json["fromUserId"],
        toUserId: json["toUserId"],
      );

  Map<String, dynamic> toJson() => {
        "subscribeId": subscribeId,
        "fromUserId": fromUserId,
        "toUserId": toUserId,
      };
}
