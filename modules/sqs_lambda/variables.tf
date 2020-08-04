variable "cloudwatch_event_rule_id" {
  description = "Cloudwatch event rule name"
  type        = string
}

variable "cloudwatch_event_rule_arn" {
  description = "Arn of previously generated event rule"
  type        = string
}

variable "target_id" {
  description = "Target ID"
  type        = string
}

variable "package_location" {
  description = "Path for the Lambda deployment package"
  type        = string
}

variable "function_name" {
  description = "Clean name for Lambda function"
  type        = string
}

variable "handler" {
  description = "Handler location for lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "Language runtime for lambda function"
  type        = string
}

variable "environment_variable_map" {
  description = "Map of environment variables for Lambda"
  type        = map(string)
}

variable "queue_name" {
  description = "Name of sqs queue"
  type        = string
}

variable "delay_seconds" {
  description = "Seconds to delay processing of message in sqs queue"
  type        = number
  default     = 0
}

variable "custom_lambda_policy" {
  description = "Lambda policy specific to invoked lambda"
  type        = string
  default     = null
}

variable "sns_topic_arn" {
  description = "SNS Topic arn for lambda access to publish messages."
  type        = string
}

variable "sqs_kms_key_id" {
  description = "KMS Key Id to be used with SQS"
  type        = string
}
