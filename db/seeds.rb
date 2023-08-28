# frozen_string_literal: true

states = State.create([{ name: 'Paraná', symbol: 'PR' }, { name: 'Santa Catarina', symbol: 'SC' },
                       { name: 'Rio Grande do Sul', symbol: 'RS' }])
City.create([
              { name: 'Curitiba', state: states.first, capital: true },
              { name: 'Pato Branco', state: states.first, capital: false },
              { name: 'São José dos Pinhais', state: states.first, capital: false },
              { name: 'Florianópolis', state: states.second, capital: true },
              { name: 'Porto Belo', state: states.second, capital: false },
              { name: 'Balneário Camboriú', state: states.second, capital: false },
              { name: 'Porto Alegre', state: states.last, capital: true },
              { name: 'Bento Gonçalves', state: states.last, capital: false },
              { name: 'Gramado', state: states.last, capital: false }
            ])
