
data "intersight_compute_rack_unit" "myname" {
  serial = "WZP22281J8C"

}



resource "intersight_server_profile" "mysp" {
   ## action = "Deploy"
    name = "kukunew"

tags {
  key = "Owner"
  value = "yshtoots"
}
tags {
  key = "Location"
  value = "NTN-SUPERLAB"
}
organization {
    object_type = "organization.Organization"
    moid = data.intersight_organization_organization.default.results[0].moid
  }

policy_bucket =  [ {
  moid = intersight_ntp_policy.ntp-tf-demo.moid
  object_type = "ntp.Policy"
  class_id = ""
  additional_properties = ""
  selector = "" 
},
{ moid = intersight_boot_precision_policy.boot-tf-demo.moid
object_type = "boot.PrecisionPolicy"
class_id = ""
additional_properties = ""
selector = ""
} ]


assigned_server  {
   moid = data.intersight_compute_rack_unit.myname.id
   object_type = "compute.RackUnit"
  } 
  




}
/*
output "tete" {

value = intersight_server_profile.mysp
}
*/
