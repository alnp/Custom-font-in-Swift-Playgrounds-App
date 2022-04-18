# Custom-font-in-Swift-Playgrounds-App
Custom font usage example for Swift Playgrounds App

### Como adicionar uma fonte ao projeto do Swift Playgrounds App
1. Adicione os arquivos das fontes ao seu projeto. O próprio Xcode irá colocá-las numa pasta chamada de "Resources";
![Passo 1](ImgsREADME/Img1.png)
2. Copie o arquivo "MyCustomFonts.swift" desse repositório para o seu projeto;
3. Inclua um novo "case" para cada fonte adicionada com o nome e extensão do arquivo;
![Passo 2](ImgsREADME/Img2.png)
4. Adicione na inicialização do seu App o código "CustomFonts.register()" para registrar todas as fontes adicionadas;
![Passo 3](ImgsREADME/Img3.png)
5. Pronto! Agora, basta utilizar como no exemplo dado.
![Passo 4](ImgsREADME/Img4.png)
