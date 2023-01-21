while true
        puts " Veuillez choisir une question:"
        puts "1. Combien y a-t-il de handle dans cette array ?
        puts "2. Quel est le handle le plus court de cette liste ?
        puts "3. Combien y-a-t'il de handle contenant 5 caractères (le @ ne compte pas pour un caractère)
        puts "4. Combien commencent par une majuscule (première lettre juste après le @) ?
        puts "5. Trie la liste de handle par ordre alphabétique.
        puts "6. Trie la liste de handle par taille des handle (les plus petits en premiers, les plus grands après)
        puts "7. Quelle est la position dans l'array de la personne @epenser ?
        puts "8. Sors-moi une répartition des handle par taille de ces derniers (nombre de handle avec 1 caractère, nombre de handle avec 2 caractères, nombre de handle avec 3 caractères, etc)
    choice = gets.chomp
    case choice
        when "1"
            puts "il y a  #{list.size} handles dans cette array."
        when "2"
            puts "le handle le plus court est #{list.min_by(&:size)}"
        when "3"
            count = list.count { |handle| handle.length - 1 == 5 }
            puts "il y a #{count} handle(s) contenant 5 caractères."
        when "4"
            count = list.count { |handle| handle[1] =~ /[A-Z]/ }
            puts "il y a #{count} handle(s) commencent par une majuscule."
        when "5"
            puts "la liste triée par ordre alphabétique est : #{list.sort}"
        when "6"
            puts "la liste triée par taille des handle est : #{list.sort_by(&:size)}"
        when "7"
            puts "la position de @Hdgdg est : #{list.
