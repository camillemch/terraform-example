# terraform {
#   backend "remote" {
#     hostname      = "app.terraform.io"
#     organization  = "cm-lab"

#     workspaces {
#       name = "state-migration"
#     }
#   }
# }

# Terraform configuration

variable "name_length" {
  description = "The number of words in the pet name"
  default     = "5"
}

resource "random_pet" "pet_name" {
  length    = var.name_length
  separator = "-"
}

output "pet_name" {
  value = random_pet.pet_name.id
}
