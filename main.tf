provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.session_token
}

# Cria um tópico SNS
resource "aws_sns_topic" "my_topic" {
  name = "topico-sns-ponderada"
}

# Cria uma assinatura de email para esse tópico (para teste)
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = "bellafernandessaldanha@hotmail.com" 
}


