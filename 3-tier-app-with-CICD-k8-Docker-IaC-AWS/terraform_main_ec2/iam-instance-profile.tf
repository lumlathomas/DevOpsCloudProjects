resource "aws_iam_instance_profile" "instance-profile" {
  name = "ec2-jumphost-server"
  role = aws_iam_role.iam-role.name
}
