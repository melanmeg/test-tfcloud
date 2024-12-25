# test-tfcloud
test tfcloud

1. Terraform Cloud (test-tfcloud-workspaceワークスペース) で apply する

2. Terraform Cloud の stateファイルをプルする
```bash
$ cat tmp/terraform_tfc.tf > terraform.tf
$ rm -rf .terraform .terraform.hcl

$ terraform login
  Enter a value: yes
  Enter a value: [Tokenを取得して入力]

$ terraform init
$ terraform plan
# 差分が表示されないこと

$ terraform state pull > .terraform.tfstate
```

3. Terraform Cloud の stateファイルを指定のGCSバケットにプッシュする

```bash
$ cat tmp/terraform_gcs.tf > terraform.tf
$ rm -rf .terraform .terraform.hcl

$ terraform init
$ terraform plan
# 差分が表示されないこと
```
