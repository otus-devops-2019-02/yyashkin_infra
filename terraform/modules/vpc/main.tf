resource "google_compute_firewall" "firewall_ssh" {
name = "default-allow-ssh"
network = "default"
allow {
protocol = "tcp"
ports = ["22"]
}
source_ranges = "${var.source_ranges}"
}
resource "google_compute_firewall" "firewall_80" {
name = "default-allow-80"
network = "default"
allow {
protocol = "tcp"
ports = ["80"]
}
source_ranges = ["0.0.0.0/0"]
}