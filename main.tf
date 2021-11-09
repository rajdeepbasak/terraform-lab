provider "google" {
	project = var.project
	region = "us-central1"
}

variable "project" {
    type = string  
}
variable "mt" {
    type = string
    default = "f1-micro"
}

resource "google_compute_instance" "myvm" {
	name = "myfirstvm"
	machine_type = var.mt
	zone = "us-central1-a"
	network_interface {
		network = "default"
        access_config {
          
        }
	}
	boot_disk {
		initialize_params {
			image = "debian-cloud/debian-10"
		}
	}
}