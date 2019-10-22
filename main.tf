variable "environment" {
    default = ""
    description = "The name of the environment in which you would like to provision"
}

resource "random_pet" "host" {
    keepers = {
    # Generate a new id each time the system time changes
    timestamp = "${timestamp()}"
  }
}

output "host" {
  value = "${random_pet.host.id}-${lower(var.environment)}"
}
