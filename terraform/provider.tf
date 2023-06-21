terraform {
   required_providers {
      grafana = {
         source  = "grafana/grafana"
         version = "1.40.1"
      }
   }
}

provider "grafana" {
   alias = "cloud"

   url   = "localhost:3000"
   auth  = "<Grafana-API-Key>"
}