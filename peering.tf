resource "aws_vpc_peering_connection" "foo" {
    count = var.is_peering_required ? 1 ; 0
    peer_vpc_id   = data.aws_vpc.default.id #acceptor
    vpc_id        = aws_vpc.main.id #requestor

    auto_accept = true

    tags = merge (
    var.common_tags,
    var.vpc_peering_tags,
    {
        Name = "${local.resourse_name}-default"
    }
  )
}