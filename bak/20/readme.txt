Перед вводным словом в css может быть пусто, точка и решетка.
Они ставятся только в css файле.

1) Если пусто, значит правила применяются к точку:

H1 { ... }

2) Если нужно выбрать какой либо экземпляр тяга то мы ставим точку:

Мы пишем в представлении (erb) класс <... class="smth" </>
А затем подключаем к этому классу отдельное правило
.smth {}

Может применятся ко множеству элементов

3) Делает тоже самое, но применяется только к одному элементу:

Для этого в представлении мы ставим атрибут id - <p id="something">Blablabla</p>
А затем в css файле обращаемся к месту с атрибутом id.
#something { ... }





