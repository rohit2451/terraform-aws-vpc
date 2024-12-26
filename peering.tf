# resource "aws_vpc_peering_connection" "foo" {
#     count = var.is_peering_required ? 1 ; 0
#     peer_vpc_id   = aws_vpc.bar.id #acceptor
#     vpc_id        = aws_vpc.main.id #requestor
# }