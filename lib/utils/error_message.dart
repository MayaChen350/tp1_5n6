String displayError(String errorType) {
  String result;

  switch (errorType) {
    case "NomTropCourt":
      result = "Le nom d'utilisateur est trop court !";
    case "MotDePasseTropCourt":
      result = "Le mot de passe est trop court !";
    case "MotsDePasseDifferents":
      result = "Les mots de passe ne correspondent pas !";
    case "InternalAuthenticationServiceException":
      result = "Une erreur serveur a eu lieu.";
    case "Existant":
      result = "Une tâche du même nom existe déjà !";
    case "MauvaisNomOuMotDePasse":
      result = "L'un des champs est incorrect!";
    default:
      result = "Erreur inconnu $errorType";
  }

  return result;
}