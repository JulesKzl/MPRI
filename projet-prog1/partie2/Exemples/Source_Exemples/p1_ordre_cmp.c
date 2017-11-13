int main() {
  int x;
  x=0;
  // Comparaison évaluée de droite à gauche,
  // doit donner un résultat faux (x=0).
  x=(x==x++);
  printf("%d",x);
  return 0;
}
