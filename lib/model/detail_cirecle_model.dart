class ConfirmParticipantModel {
  final String name;
  final String gender;
  final String userCode;

  ConfirmParticipantModel(
      {required this.name, required this.gender, required this.userCode});
}

List<ConfirmParticipantModel> participants = [
  ConfirmParticipantModel(
    name: 'Alice',
    gender: 'Female',
    userCode: 'ABC123',
  ),
  ConfirmParticipantModel(name: 'Bob', gender: 'Male', userCode: 'XYZ789'),
  ConfirmParticipantModel(name: 'Charlie', gender: 'Male', userCode: 'DEF456'),
  ConfirmParticipantModel(name: 'Diana', gender: 'Female', userCode: 'GHI789'),
  ConfirmParticipantModel(name: 'Eva', gender: 'Female', userCode: 'JKL012'),
  // Add more instances
  ConfirmParticipantModel(name: 'Frank', gender: 'Male', userCode: 'MNO345'),
  ConfirmParticipantModel(name: 'Grace', gender: 'Female', userCode: 'PQR678'),
  ConfirmParticipantModel(name: 'Henry', gender: 'Male', userCode: 'STU901'),
];
