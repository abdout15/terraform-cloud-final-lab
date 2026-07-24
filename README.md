# Terraform Cloud — Dev, Test et Prod

Mini-projet Terraform multi-environnement déployé sur AWS avec HCP Terraform.

## Environnements

| Environnement | VPC | Subnet public |
|---|---|---|
| Dev | 10.10.0.0/16 | 10.10.1.0/24 |
| Test | 10.20.0.0/16 | 10.20.1.0/24 |
| Prod | 10.30.0.0/16 | 10.30.1.0/24 |

## Ressources par environnement

- un VPC ;
- un subnet public ;
- une Internet Gateway ;
- une table de routage publique ;
- une route vers Internet ;
- une association entre le subnet et la table de routage ;
- un Security Group autorisant HTTP et HTTPS.

## Structure

- `modules/network` : module réseau réutilisable ;
- `environments/dev` : environnement de développement ;
- `environments/test` : environnement de test ;
- `environments/prod` : environnement de production.

## HCP Terraform

Le projet utilise trois workspaces séparés :

- `terraform-cloud-lab-dev` ;
- `terraform-cloud-lab-test` ;
- `terraform-cloud-lab-prod`.

Chaque workspace possède son propre état Terraform distant.