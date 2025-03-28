<script setup>

    defineProps({
        data: {
            type: Array,
            required: true
        }
    })

</script>

<template>
    <div class="bg-white relative w-full h-130 overflow-auto shadow-md rounded-lg">
    <table class="w-full text-sm text-left text-gray-500 min-w-max">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 sticky top-0">
            <tr>
                <th class="px-4 py-3">Registro ANS</th>
                <th class="px-4 py-3">CNPJ</th>
                <th class="px-4 py-3">Razão Social</th>
                <th class="px-4 py-3">Nome Fantasia</th>
                <th class="px-4 py-3">Modalidade</th>
                <th class="px-4 py-3">Logradouro</th>
                <th class="px-4 py-3">Número</th>
                <th class="px-4 py-3">Complemento</th>
                <th class="px-4 py-3">Bairro</th>
                <th class="px-4 py-3">Cidade</th>
                <th class="px-4 py-3">UF</th>
                <th class="px-4 py-3">CEP</th>
                <th class="px-4 py-3">DDD</th>
                <th class="px-4 py-3">Telefone</th>
                <th class="px-4 py-3">Fax</th>
                <th class="px-4 py-3">Endereço Eletrônico</th>
                <th class="px-4 py-3">Representante</th>
                <th class="px-4 py-3">Cargo Representante</th>
                <th class="px-4 py-3">Região de Comercialização</th>
                <th class="px-4 py-3">Data Registro ANS</th>
            </tr> 
        </thead>
        <tbody>
            <tr v-for="item in data" :key="item.Registro_ANS" class="border-b">
                <td class="px-4 py-3 font-medium text-gray-900">{{ item.Registro_ANS }}</td>
                <td class="px-4 py-3">{{ item.CNPJ }}</td>
                <td class="px-4 py-3">{{ item.Razao_Social }}</td>
                <td class="px-4 py-3">{{ item.Nome_Fantasia }}</td>
                <td class="px-4 py-3">{{ item.Modalidade }}</td>
                <td class="px-4 py-3">{{ item.Logradouro }}</td>
                <td class="px-4 py-3">{{ item.Numero }}</td>
                <td class="px-4 py-3">{{ item.Complemento }}</td>
                <td class="px-4 py-3">{{ item.Bairro }}</td>
                <td class="px-4 py-3">{{ item.Cidade }}</td>
                <td class="px-4 py-3">{{ item.UF }}</td>
                <td class="px-4 py-3">{{ item.CEP }}</td>
                <td class="px-4 py-3">{{ item.DDD }}</td>
                <td class="px-4 py-3">{{ item.Telefone }}</td>
                <td class="px-4 py-3">{{ item.Fax }}</td>
                <td class="px-4 py-3">{{ item.Endereco_eletronico }}</td>
                <td class="px-4 py-3">{{ item.Representante }}</td>
                <td class="px-4 py-3">{{ item.Cargo_Representante }}</td>
                <td class="px-4 py-3">{{ item.Regiao_de_Comercializacao }}</td>
                <td class="px-4 py-3">{{ item.Data_Registro_ANS }}</td>
            </tr>
        </tbody>
    </table>
</div>

</template>