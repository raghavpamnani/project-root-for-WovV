resource "aws_db_instance" "wordpress" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  publicly_accessible  = true
  skip_final_snapshot  = true

  vpc_security_group_ids = [aws_security_group.ecs.id]
  db_subnet_group_name   = aws_db_subnet_group.wordpress.name
}

resource "aws_db_subnet_group" "wordpress" {
  name       = "wordpress-subnet-group"
  subnet_ids = aws_subnet.subnet[*].id
}
