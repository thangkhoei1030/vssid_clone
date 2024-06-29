class ProcessItemResponse {
  ProcessItemResponse({
    required this.id,
    required this.customerId,
    required this.customerFullName,
    required this.fromdate,
    required this.todate,
    required this.workUnit,
    required this.job,
    required this.workplace,
    required this.currency,
    required this.salary,
    required this.basicSalary,
    required this.created,
    required this.updated,
    required this.status,
    required this.createdBy,
    required this.userFullName,
  });

  final int? id;
  final int? customerId;
  final dynamic customerFullName;
  final String? fromdate;
  final String? todate;
  final String? workUnit;
  final String? job;
  final String? workplace;
  final String? currency;
  final int? salary;
  final int? basicSalary;
  final int? created;
  final int? updated;
  final int? status;
  final int? createdBy;
  final dynamic userFullName;

  ProcessItemResponse copyWith({
    int? id,
    int? customerId,
    dynamic? customerFullName,
    String? fromdate,
    String? todate,
    String? workUnit,
    String? job,
    String? workplace,
    String? currency,
    int? salary,
    int? basicSalary,
    int? created,
    int? updated,
    int? status,
    int? createdBy,
    dynamic? userFullName,
  }) {
    return ProcessItemResponse(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      customerFullName: customerFullName ?? this.customerFullName,
      fromdate: fromdate ?? this.fromdate,
      todate: todate ?? this.todate,
      workUnit: workUnit ?? this.workUnit,
      job: job ?? this.job,
      workplace: workplace ?? this.workplace,
      currency: currency ?? this.currency,
      salary: salary ?? this.salary,
      basicSalary: basicSalary ?? this.basicSalary,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      status: status ?? this.status,
      createdBy: createdBy ?? this.createdBy,
      userFullName: userFullName ?? this.userFullName,
    );
  }

  factory ProcessItemResponse.fromJson(Map<String, dynamic> json) {
    return ProcessItemResponse(
      id: json["id"],
      customerId: json["customer_id"],
      customerFullName: json["customer_full_name"],
      fromdate: json["fromdate"],
      todate: json["todate"],
      workUnit: json["work_unit"],
      job: json["job"],
      workplace: json["workplace"],
      currency: json["currency"],
      salary: json["salary"],
      basicSalary: json["basic_salary"],
      created: json["created"],
      updated: json["updated"],
      status: json["status"],
      createdBy: json["created_by"],
      userFullName: json["user_full_name"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "customer_full_name": customerFullName,
        "fromdate": fromdate,
        "todate": todate,
        "work_unit": workUnit,
        "job": job,
        "workplace": workplace,
        "currency": currency,
        "salary": salary,
        "basic_salary": basicSalary,
        "created": created,
        "updated": updated,
        "status": status,
        "created_by": createdBy,
        "user_full_name": userFullName,
      };

  @override
  String toString() {
    return "$id, $customerId, $customerFullName, $fromdate, $todate, $workUnit, $job, $workplace, $currency, $salary, $basicSalary, $created, $updated, $status, $createdBy, $userFullName, ";
  }
}
