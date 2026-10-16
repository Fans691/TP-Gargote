# Etape 2:
- On n'a pas juste ajouter  categorie VARCHAR(50) dans plats car cela peut entrainer un erreur de saise lors d'entree de nouveau plat. Par exemple, si l'utilisateur en un plat de categorie Malagasy et plat malagasy, on obtient deux version d'un meme categorie

# Etape 3:
- J'ai place la quantite dans la table plat_commande

# Etape 4:
- Non la cle etrangere id_client peut etre null pour moi au cas ou il y a un procedure stockee qui convertit l'id en varchar("client de passage)

