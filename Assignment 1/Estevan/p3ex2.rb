require 'set'

class Turma

    @@num_de_alunos = 0.to_i
    @@num_de_aprovados = 0.to_i
    @@disciplinas = Hash.new
    @@aprovados = Hash.new

    def initialize(disciplina, alunos, notas)
        @disciplina = disciplina
        if @@disciplinas.key?(disciplina)                               #cria hash com disciplinas como chave e o set de alunos como valor
            @@disciplinas[disciplina] << alunos                         #se a chave já existe, adiciona o id do aluno como valor, mantendo os
        else                                                            #valores anteriores
            @@disciplinas[disciplina] = alunos    
        end
        @alunos = alunos
        @notas = Hash[alunos.zip(notas)]
        @@num_de_alunos += alunos.size
        separa_aprovados
    end

    def self.verifica_aluno_repitido(disciplina_nova)                   #impede que um aluno seja matriculado na mesma matéria duas vezes 
        alunos_disciplina_existente = Set.new                   
        @@disciplinas.each do |disciplina_existente, alunos|      
            
            if disciplina_nova == disciplina_existente
                alunos_disciplina_existente.merge alunos
            end

        end
        return alunos_disciplina_existente
    end

    def self.ret_num_de_alunos
        @@num_de_alunos
    end

    def separa_aprovados
        @notas.each do |aluno, nota|

            if nota == 'MM' || nota == 'MS' || nota == 'SS'
                @@num_de_aprovados += 1
                if @@aprovados.key?(aluno)
                    @@aprovados[aluno] << "," + nota                    #guarda todas as notas acima da média do aluno aprovado
                else
                    @@aprovados[aluno] = nota
                end
            end
        end
    end

    def self.ret_num_de_aprovados
        @@num_de_aprovados
    end

    def self.ret_lista_aprovados
        @@aprovados
    end


end

def verifica_num                                                        #garante que a entrada (número de turmas) é inteira
    num1 = gets.chomp
    begin
        num1 = Integer(num1)
        if num1<0 || num1>10
            puts "Número inválido. Digite um número de 0 a 10:"
            num1 = verifica_num
        end
    rescue ArgumentError
        puts "Entrada inválida. Digite um número de 0 a 10:"
        num1 = verifica_num
    end

    return num1
end


def cria_turma(num)
    materias = ['Cálculo 1', 'Cálculo 2', 'Cálculo 3', 'Física 1', 'Física 2', 'Eletromagnetismo', 'Algoritmos e Programação de Computadores', 'Técnicas de Programação 1', 'Estruturas de Dados', 'Sistemas Digitais']
    i = 0.to_i

    while i<num
    i += 1
    alunos = Set.new
    notas = Array.new

    disciplina = materias[rand(0..9)]
    max_alunos = rand(1..20)
        
        while alunos.size<max_alunos                                #só para de gerar id's de alunos quando atinge o número de alunos para aquela turma
            id_rand = rand(0..200)
            if Turma.verifica_aluno_repitido(disciplina).add?(id_rand)              #garante que uma nota só é gerada quando a id do aluno não é repitida para aquela turma
                alunos.add id_rand
                nota = rand(0..10)

                if nota==0
                    notas.push 'SR'
                elsif nota>0 && nota<3
                    notas.push 'SR'
                elsif nota>=3 && nota<5
                    notas.push 'MI'
                elsif nota>=5 && nota<7
                    notas.push 'MM'
                elsif nota>=7 && nota<9
                    notas.push 'MS'
                elsif nota>=9 && nota<=10
                    notas.push 'SS'
                end
            end
        end
        Turma.new(disciplina,alunos,notas)
        #puts disciplina                            #deixei comentado caso queiram ver quais valores estão sendo passados pra 
        #puts alunos                                #criação da turma
        #puts notas
        #puts "\n"
    end 
end

puts "Digite a quantidade de turmas nesse semestre (0 a 10):"

cria_turma(verifica_num)

num_alunos = Turma.ret_num_de_alunos
num_aprovados = Turma.ret_num_de_aprovados
lista_aprovados = Turma.ret_lista_aprovados

puts "\n\nNúmero de matriculados: #{num_alunos}\nNúmero de aprovados: #{num_aprovados}\nPorcentagem de aprovados: #{((num_aprovados.to_f/num_alunos.to_f)*100).round(2)}%\nLista alunos aprovados/menções: #{lista_aprovados}"