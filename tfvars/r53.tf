resource "aws_route53_record" "expense" {
  for_each        = aws_instance.expense
  name            = each.key
  ttl             = "1"
  type            = "A"
  records         = each.value
  zone_id         = var.zone_id
  allow_overwrite = true
}
