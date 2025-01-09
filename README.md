# test-tfcloud

## tfstate移行
Terraform Cloud -> GCSバケット

### 前提条件
1. `test-project-373118-sample-bucket-2/test-project-373118/state/default.tfstate` があれば削除しておく。

2. Terraform Cloud (test-tfcloud-workspaceワークスペース) で apply する

3. GCSバケットアクセス権限があること

### 手順
1. Terraform Cloud の stateファイルをプルする
```bash
$ cat tmp/terraform_tfc.tf > terraform.tf
$ rm -rf .terraform .terraform.lock.hcl terraform.tfstate*

$ terraform login
  Enter a value: yes
  Enter a value: [Tokenを取得して入力]

$ terraform init
$ terraform plan
# 差分が表示されないこと

$ terraform state pull > terraform.tfstate
```

2. Terraform Cloud の stateファイルを指定のGCSバケットにプッシュする

```bash
$ cat tmp/terraform_gcs.tf > terraform.tf
$ rm -rf .terraform .terraform.lock.hcl

$ terraform init
  Enter a value: yes
$ terraform plan
# 差分が表示されないこと
```

3. `test-project-373118-sample-bucket-2/test-project-373118/state/default.tfstate` にtfstateが保存されていること


## 空のstateをTFCにpushする

```bash
# 手順 1 のあとに実施

# terraform.tfstate の resources を空にする
# "resources": [],

$ terraform state push -force terraform.tfstate
```
