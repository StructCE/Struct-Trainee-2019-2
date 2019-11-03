def retmateria()
	string = ''
	array = ['Cálculo 1', 'Cálculo 2', 'Cálculo 3', 'Física 1', 'Física 2', 'Estrutura de Dados',
	'Algorítmos e Programação de Computadores', 'Técnicas de Programação 1', 'Sistemas Digitais', 'Eletromagnetismo']
	string = array.sample
	array.delete(string)
	return string
end

class Aluno
	@materias
	@notas
	def setMaterias(materias_)
		@materias = materias_
	end
	def setNotas(notas_)
		@notas = notas_
	end
	def getMaterias()
		return @materias
	end
	def getNota
		return @notas
	end
end

class Turma
	@materia
	@Alunos
	@numAlunos
	@@TotalAlunos = 0
	@@AlunosAprovados = 0
	def initialize(materia)
		@materia = materia
		@numAlunos = rand(0..20)
		@Alunos = []
		for i in 1..@numAlunos
			aluno = Aluno.new
			aluno.setMaterias(@materia)
			aluno.setNotas((rand*10*100).round/100.0)
			@Alunos.append(aluno)
			if aluno.getNota > 5.0
				@@AlunosAprovados+=1
			end
		end
		@@TotalAlunos += @numAlunos
	end
	def getAlunosAprovados
		return @@AlunosAprovados
	end
	def getTotalAlunos
		return @@TotalAlunos
	end

end
puts "Digite a quantidade de turmas: (0 a 10)"
n = gets.to_i

turmas = []

for i in 1..n
	turma = Turma.new(retmateria())
	turmas.append(turma)
end

PercentualAprovacao = (turmas[0].getAlunosAprovados.to_f/turmas[0].getTotalAlunos.to_f*100).round(2)

puts "Percentual de alunos aprovados: #{PercentualAprovacao}%"
