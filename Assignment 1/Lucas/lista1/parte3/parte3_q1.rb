class Aluno
    def initialize
        materia = ["ed", "c1", "c2", "c3", "sd"]
        notas = [1, 2, 3, 4, 5]
        hash = Hash.new
        materia.each_with_index do |materia, index| #concatenação dos vetores para um hash
            hash[materia] = notas[index]
        end
        @materias = materia
        @notas = notas
        @hash = hash

    end
    
    def method(materia)
        return @hash[materia], @hash
    end
end

a = "c1"
b, c = Aluno.new.method(a)

print b
print "\n"
print c
print "\n"





