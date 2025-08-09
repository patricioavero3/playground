resource "aws_subnet" "this" {
  count                   = length(var.cidr_blocks)
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_blocks[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = var.public
  tags = {
    Name = "${var.name}-${count.index}"
  }
}
