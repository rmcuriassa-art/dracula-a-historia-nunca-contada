# Ferramentas gratuitas e abertas — Drácula

Este documento registra o fluxo de ferramentas do projeto. Os programas continuam nos repositórios oficiais dos seus autores; este repositório guarda o jogo e os arquivos produzidos para ele. **Não copiamos o código-fonte inteiro dos editores para dentro do jogo**, porque isso mistura aplicações independentes e aumenta o tamanho/manutenção do projeto.

## Ferramentas escolhidas

| Etapa | Ferramenta | Para que vamos usar | Site / código |
|---|---|---|---|
| Motor do jogo | Godot Engine | Cenas 2D, física, colisões, controles móveis, áudio e exportação | https://godotengine.org/ · https://github.com/godotengine/godot |
| Pixel art e animação | Pixelorama | Personagens, spritesheets, camadas e animações quadro a quadro | https://orama-interactive.itch.io/pixelorama · https://github.com/Orama-Interactive/Pixelorama |
| Alternativa de pixel art | LibreSprite | Edição de sprites e animações | https://libresprite.github.io/ · https://github.com/LibreSprite/LibreSprite |
| Editor no navegador | Piskel | Testes rápidos de sprites e animações | https://www.piskelapp.com/ · https://github.com/piskelapp/piskel |
| Mapas e cenários | Tiled | Montagem de mapas por tiles e exportação para o motor | https://www.mapeditor.org/ · https://github.com/mapeditor/tiled |
| Alternativa para fases | LDtk | Camadas, entidades e desenho de níveis 2D | https://ldtk.io/ · https://github.com/deepnight/ldtk |

## Fluxo de trabalho

1. Criar e animar o protagonista no Pixelorama, LibreSprite ou Piskel.
2. Exportar spritesheets PNG com transparência; manter também o arquivo-fonte editável do projeto de arte quando possível.
3. Guardar os arquivos finais em `assets/sprites/` e os tilesets em `assets/tilesets/`.
4. Montar fases em Tiled ou LDtk quando começarmos a separar o cenário em mapas.
5. Integrar tudo no Godot. O jogo deve carregar spritesheets com filtragem nearest-neighbor para preservar os pixels.
6. Versionar no GitHub: código, cenas, imagens finais, arquivos-fonte pequenos e documentação.

## Regras de licença e organização

- As ferramentas são projetos separados. Antes de redistribuir uma cópia modificada de qualquer programa, conferir e cumprir a licença do respectivo repositório.
- A licença do editor **não** determina automaticamente a licença das artes criadas nele.
- Para cada pacote de arte, música, fonte ou efeito sonoro de terceiros, guardar origem, autor e licença em `ASSET_LICENSES.md`.
- Priorizar arte original criada para **Drácula: A História Nunca Contada**. Não copiar personagens, sprites, cenários, música ou marcas de Castlevania.
- Não substituir nem apagar o protótipo HTML atual até a versão Godot estar funcionando.

## Próxima entrega técnica

Criar a primeira spritesheet original do protagonista com estados `idle`, `walk`, `jump` e `attack`, testar a animação no Godot e só então substituir o personagem provisório.
