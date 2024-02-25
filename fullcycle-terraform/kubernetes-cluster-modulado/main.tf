module "new-vpc"{
    source = "./modules/network"
    prefix = var.prefix
}

module "eks"{
    source = "./modules/eks"
    vpc_id = module.new-vpc.vpc_id
    subnet_ids = module.new-vpc.subnet_ids
    prefix = var.prefix
    cluster_name = var.cluster_name
    retention_days = var.retention_days
    max_size = var.max_size
    min_size = var.min_size
    desired_size = var.desired_size
}

