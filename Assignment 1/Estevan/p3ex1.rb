class Aluno    

    def initialize
        @materias = []
        @notas = {}
    end

    def materias(escolha)                   #retorna a mençao em uma matéria inserida
        for i in 0..4
            if @materias[i].casecmp?(escolha)
                return "Nota em #{@materias[i]}: #{@notas[@materias[i]]}"
            end
        end
        return "Matéria não encontrada.\n"
    end

    def ret_materias                           #retorna o array das matérias
        @materias
    end

    def ret_notas                              #retorna o hash das notas
        @notas
    end

    def notas(materia,nota)
        @materias.push materia          #adiciona a materia no array de materias
        @notas[materia] = nota          #adiciona uma chave com o nome da materia e uma menção como valor dessa chave no hash das notas
    end

end

def verifica_nota(nota)     #garante que a nota inserida é um número
    begin
        nota = Float(nota)
    rescue ArgumentError
        nota = -1     
    end

    return nota
end

def cria_aluno
    aluno = Aluno.new
    
    for i in 0..4
        materia = String.new
        notrum = String.new
        
        puts "Insira a #{i+1}ª matéria:"
        materia = gets.chomp

        puts "Insira a nota em #{materia}:"
        loop do                                 #transforma a nota float em uma menção
            nota = gets.chomp

            nota = verifica_nota(nota)
        
            if nota==0
                notrum = "SR"
            elsif nota>0 and nota<3
                notrum = "II"
            elsif nota>=3 and nota<5
                notrum = "MI"
            elsif nota>=5 and nota<7
                notrum = "MM"
            elsif nota>=7 and nota<9
                notrum = "MS"
            elsif nota>=9 and nota<=10
                notrum = "SS"
            else
                puts "Nota inválida. Insira a nota em #{materia} novamente:"     #garante que as notas inseridas são válidas
            end

        break if nota>=0 and nota<=10 
        end
        puts "\n"
        aluno.notas(materia,notrum)
    end

    
    loop do 
    puts "Insira a matéria cuja nota deseja saber ou dê enter sem inserir nada para visualizar todas as notas."
    escolha = gets.chomp
    
    if escolha != '' then puts aluno.materias(escolha) end
    
    puts "\n"
    break if escolha == ''
    end

    puts aluno.ret_notas
end

cria_aluno