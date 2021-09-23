# MIP0: Sistema de mejora del Protocolo Maker

## Preamble

```
MIP#: 0
Title: Sistema de mejora del Protocolo Maker
Author(s): Charles St.Louis (@CPSTL), Rune Christensen (@Rune23)
Contributors: @LongForWisdom, @blimpa, @Elihu
Type: Process
Status: Accepted
Date Proposed: 2020-04-06
Date Ratified: 2020-05-02
Last Amended: 2021-04-29
Dependencies: n/a
Replaces: n/a
```

## References

**[Plantilla General para los  MIPs](General-MIP-Template.md)**
**[Plantilla Técnica para los  MIPs](Technical-MIP-Template.md)**

## Sentence Summary

MIP0 define el *Marco de propuestas de mejora de Maker (MIP)* para que lo utilicen todos los MIP posteriores.

## Paragraph Summary

MIP0 define el *Marco de propuestas de mejora del fabricante (MIP)* para que lo utilicen todos los MIP posteriores. Este MIP es el MIP fundamental que proporciona las plantillas, los procesos y las pautas necesarias para trabajar dentro del marco y define las funciones clave necesarias para el funcionamiento del proceso de MIP.
## Component Summary

**MIP0c1: Definicion del Sistema de mejora del Protocolo Maker**
*Defines core concepts of the MIP Framework.* 

**MIP0c2: Principios básicos**
*Establece los principios que todos los MIP deben apuntar a seguir.*

**MIP0c3: El ciclo de vida de MIP**
*Define las etapas formales en el ciclo de vida de los MIP desde la concepción hasta la aprobación, rechazo o aplazamiento.*

**MIP0c4: Componentes MIP y tipos de componentes MIP**
*Define componentes MIP y sus tipos.*

**MIP0c5: Proceso de reemplazo de MIP**
*Define el proceso para reemplazar MIP.*

**MIP0c6: Materiales de apoyo**
*Define cómo incluir materiales externos en los MIP.*

**MIP0c7: Plantillas MIP**
*Proporciona las plantillas MIP para MIP generales y técnicos.*

**MIP0c8: Dependencias de roles de dominio MIP0**
*Define las funciones básicas esenciales para el marco MIP.*

**MIP0c9: Rol de editor de MIP**
*Define las responsabilidades del rol de Editor de MIP y los criterios y motivos para su eliminación.*

**MIP0c10: Rol de facilitador de gobernanza**
*Define las responsabilidades del rol de Facilitador de Gobernanza y los criterios y motivos para su remoción.*

**MIP0c11: Incorporación de personal básico (`OBSOLETE`)**
*Dejado obsoleto por Core Unit Framework (consulte [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md))*

**MIP0c12: Desalojo de personal básico (`OBSOLETE`)**
*Dejado obsoleto por Core Unit Framework (consulte [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md))*

**MIP0c13: Gestión de conjuntos MIP**
*Define procedimientos para administrar conjuntos MIP.*

## Motivación

Para que MakerDAO se convierta en una organización totalmente descentralizada y autosostenible, se requiere un proceso formalizado de toma de decisiones. En un protocolo sin permiso, todos deberían poder proponer cambios y mejoras.

El Marco MIP sirve para empoderar a cada participante de Gobernanza dentro y fuera de la cadena, brindándoles una forma estandarizada de interactuar con el DAO más amplio y definir su forma futura.

## Detalles de la especificación/propuesta

### MIP0c1: Definición del Sistema de mejora del Protocolo Maker

- **Propuestas de mejora de Maker (MIP):** - **Propuestas de mejora de Maker (MIP):** MIPs son documentos estandarizados sujetos a votación que (una vez promulgados) regulan y definen el comportamiento de la gobernanza de Maker y el Protocolo de Maker. Los MIP se pueden agregar, modificar, reemplazar y eliminar.
- **Conjuntos MIP:** Conjuntos MIP son grupos de MIP interdependientes que funcionan como un todo modular. Consulte `MIP0c13`.
- **Tipos de MIP:** Los MIP pueden ser generales o técnicos. Consulte `MIP0c5`.
- **Subpropuestas (SP):** Las subpropuestas son instancias de Componentes de proceso MIP. Consulte `MIP0c4`.
- **Período mínimo de retroalimentación:** La cantidad mínima de tiempo dentro del cual la comunidad puede brindar retroalimentación en respuesta a un MIP propuesto antes de que pueda avanzar a la Presentación formal. Consulte `MIP0c3`.
- **Período congelado mínimo:** La cantidad mínima de tiempo durante el cual un MIP debe permanecer sin cambios antes de que pueda avanzar a Presentación formal. Consulte `MIP0c3`.
- **Facilitador (es) de gobernanza:** Los facilitadores de gobernanza tienen la tarea de garantizar el buen funcionamiento del proceso de gobernanza. Este papel debe incluir una amplia gama de actividades. Los facilitadores de gobernanza no pueden delegar sus responsabilidades formales en el marco de MIP. Consulte `MIP0c10`.
- **Editor (es) de MIP:** Los editores de MIP hacen cumplir los aspectos administrativos y editoriales del proceso y programa general de MIP. Consulte `MIP0c9`.

---

### MIP0c2: Principios básicos

1. **Especificidad:** Un MIP debe definir y abordar un comportamiento específico o una responsabilidad única. No se permiten MIP sobrecargados.

2. **Integridad:** Un MIP debe ser minucioso. Los detalles relevantes y específicos no deben dejarse sin definir o sin referencia.

3. **Evite la superposición:** Varios MIP no deben implementar el mismo tipo de comportamiento de forma independiente. Por ejemplo, no debería haber dos formas independientes e intercambiables de incorporar garantías.

4. **Claridad:** Un MIP no debe tener interpretaciones contradictorias igualmente válidas. Un MIP debe ser lo más claro y fácil de entender posible.

5. **Brevedad:** Un MIP debe ser lo más breve posible, incluyendo solo lo esencial dados los otros principios básicos.

---

### MIP0c3: El ciclo de vida de MIP

#### El ciclo de vida de MIP y los estados de MIP

![mip_life_cycle](https://github.com/makerdao/mips/blob/master/MIP0/MIP_lifecycle.png)

#### Desglose del ciclo de vida de MIP

1. **Concepción**: un autor de MIP publica una propuesta de MIP en el [foro de Maker](https://forum.makerdao.com/c/mips/14) en la categoría *Propuestas de mejora de Maker*. A partir de este momento, los editores de MIP estarán disponibles para ayudar al autor de MIP.

2. **Aprobado por los editores de MIP**: Un editor de MIP verifica que la propuesta de MIP publicada:

   - Sigue el formato apropiado de la plantilla MIP para su tipo. Consulte `MIP0c4`.
   - Es un MIP original o un reemplazo de un MIP anterior.
   - Ha sido enviado al repositorio de [MIPs GitHub](https://github.com/makerdao/mips) con una solicitud de extracción por parte del autor de MIP o un editor de MIP.

   Si la verificación es exitosa, el Editor de MIP:

   - Aprueba el MIP y le asigna un número de MIP formal.
   - Se fusiona en el PR.

3. **Solicitud de comentarios (RFC)**: comienza un período de revisión por parte de la comunidad y la redacción correspondiente. La duración mínima de este período está determinada por dos variables:

   - `Periodo de retroalimentación`: 3 meses.
   - `Frozen Period`: 1 mes.

   Estos períodos pueden superponerse. Consulte `MIP0c1` para conocer sus definiciones.
   
> Tenga en cuenta que las longitudes de estos períodos están anuladas condicionalmente por [MIP2](https://github.com/makerdao/mips/blob/master/MIP2/mip2.md), más específicamente por [MIP2c2](https://mips.makerdao.com/mips/details/MIP2#mip2c2-interim-phase-2).

4. **Requisitos del período de comentarios cumplidos:** Una vez que el MIP ha cumplido con la fase de RFC, está listo para la presentación formal.

5. **Presentación formal (FS):** En este punto, el autor de MIP envía su MIP al Ciclo de gobernanza moviéndolo a la [*categoría de foro de presentación formal*](https://forum.makerdao.com/c/mips/fs/16) dentro de la [ventana de envío formal de un ciclo de gobernanza](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md#mip51c1-governance-cycle-breakdown).

6. **Aprobado por el facilitador (es) de gobernanza:** Los facilitadores de gobernanza evalúan el MIP. Si no lo aprueban, se puede reconsiderar el MIP para ingresar al Ciclo de Gobernanza en una fecha posterior.

7. **Ciclo de gobernanza mensual**: en este punto, la propuesta entra en el [Ciclo de gobernanza mensual](https://github.com/makerdao/mips/blob/master/MIP51/mip51.md).

8. **Aceptado/Rechazado:** Se vota sobre el MIP. Si se aprueba, se acepta oficialmente y se le otorga el estado de "Aceptado". De lo contrario, se rechaza el MIP.

#### Reenvío

Un MIP se puede volver a enviar al proceso de presentación formal hasta 3 veces sin tener que pasar por las fases 1 a 4 nuevamente si no se aprobó debido a razones externas legítimas (por ejemplo, se incluyó en una encuesta de gobernanza con una propuesta controvertida).

Se puede volver a enviar un MIP rechazado. En algunos casos (si fue rechazado por una explicación extraña demostrable, según lo juzguen los facilitadores de gobernanza), se le puede permitir ingresar al siguiente ciclo de gobernanza de inmediato.

#### Otros estados de MIP

- **Retirada:** Asignada cuando un autor de MIP retira su propuesta de MIP.

  > Un MIP puede retirarse en cualquier momento antes de que entre en el ciclo de gobernanza. Tenga en cuenta que una propuesta retirada se puede tomar del autor original con una transición simple facilitada por un editor de MIP y las partes respectivas. Si el autor de MIP original deja de estar disponible, un editor de MIP puede proceder con la transferencia de la autoría.

- **Aplazado:** Se asigna cuando una propuesta se considera no lista o no es una prioridad, pero puede volver a proponerse en una fecha posterior. Este estado se puede asignar durante RFC o rechazando una encuesta de foro o una Solicitud de señal.

- **Obsoleto:** Asignado cuando:

  - Un MIP ha sido reemplazado o desaprobado.
  - Se ha aplazado un MIP durante más de seis meses.
  - Un autor de MIP ha abandonado la propuesta y ninguna persona ha comunicado su voluntad de asumir la responsabilidad de un autor de MIP.

#### Proceso de cambio de estado de MIP

Si un autor de MIP solicita un cambio de estado para un MIP, un editor de MIP lo revisará. Si se justifica el cambio de estado, el editor MIP cambiará el estado. De lo contrario, el editor de MIP revertirá y resaltará los problemas para que el autor de MIP los corrija antes de solicitar otro cambio de estado.

---

### MIP0c4: Componentes MIP y tipos de componentes MIP

#### Componentes MIP

Para satisfacer los Principios Básicos de claridad e integridad, un MIP puede necesitar tener múltiples componentes, cada uno de los cuales define distintas unidades lógicas.

Un componente MIP puede ser de dos tipos: general o de proceso. El tipo de Componentes MIP generales generalmente no se declara: es el tipo supuesto de componentes que no son del tipo Proceso.

#### Componente MIP de proceso

Los componentes MIP del tipo de proceso dan forma a un flujo de proceso específico para que la comunidad Maker lo adopte y lo estandarice con respecto a cómo opera la gobernanza. Este tipo de componente MIP ayuda a optimizar procesos particulares de una manera transparente, abierta y rastreable.

En este MIP, `MIP0c5` es un componente de proceso.

Los componentes de proceso MIP no requieren una plantilla especial.

#### Subpropuestas

Las subpropuestas son instancias de los procesos definidos por Process MIP Components. Por ejemplo, cada incorporación concreta de un Facilitador de gobernanza requiere la creación (instanciación) de una subpropuesta del Componente MIP de proceso `MIP41c4` en [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md).

Las subpropuestas pasan por el mismo proceso que los MIP, como se describe en `MIP0c3`.

Para sus subpropuestas derivadas, los MIP de componentes de proceso definen:

- Qué plantilla deben utilizar. Si no se especifica ninguno, no se necesita una plantilla especial.
- Su período de retroalimentación y su período congelado.

#### Convenciones de nombres

**Los componentes MIP** siguen la convención de nomenclatura `MIPXcY`, donde` X` es el MIP principal e `Y` es el número de componente.

**Las subpropuestas** siguen la convención de nomenclatura `MIPXcY-SPZ`, donde` X` es el MIP principal, `Y` es el número de componente y` Z` es el número de subpropuesta.

---
### MIP0c5: Proceso de reemplazo de MIP

Un MIP puede definir uno o más objetivos de reemplazo en su preámbulo. Si el MIP recibe el estado "Aceptado", los MIP de destino de reemplazo reciben el estado "Obsoleto" y se vuelven inactivos. El MIP reemplazado registrará el número del MIP que lo reemplazó. En cambio, los MIP que dependen del MIP reemplazado interactuarán con el nuevo MIP.

Dado que las dependencias se transfieren, un MIP con objetivos de reemplazo definidos debe cumplir estrictamente los requisitos de dependencia e interactuar correctamente con los MIP que dependen del MIP reemplazado.

---

### MIP0c6: Materiales de apoyo

Los MIP pueden hacer referencia opcionalmente a materiales externos. Los materiales externos deben agregarse a [MIPs GitHhub](https://github.com/makerdao/mips) en la misma carpeta que el MIP que los hace referencia.

Los materiales referenciados externamente no tienen contenido de MIP y no se ratifican cuando un MIP se "Acepta" a menos que se indique explícitamente lo contrario en la especificación de un Componente de MIP.

---

### MIP0c7: Plantillas MIP

#### Plantilla MIP general
- La plantilla general de MIP debe utilizarse para los MIP siempre que una plantilla ratificada más específica no sea más apropiada.
- La plantilla de MIP general se encuentra en **[General-MIP-Template.md](General-MIP-Template.md)**. Esta plantilla se considera ratificada una vez que este MIP pasa al estado Aceptado.

#### Plantilla técnica MIP
- La plantilla técnica de MIP debe usarse para MIP siempre que un MIP proponga cambios en el código de contrato inteligente dentro del Protocolo Maker.
- La plantilla técnica MIP se encuentra en **[Technical-MIP-Template.md](Technical-MIP-Template.md)**. Esta plantilla se considera ratificada una vez que este MIP pasa al estado Aceptado.

---
### MIP0c8: Dependencias de roles de dominio MIP0

El marco de MIP depende de dos roles de dominio: editor de MIP y facilitador de gobernanza.

#### Editor MIP

Los editores de MIP hacen cumplir los aspectos administrativos y editoriales del proceso y programa general de MIP.

##### Autoridad específica de los editores MIP en los procesos MIP0

* Los editores de MIP controlan la fase 2 del ciclo de vida de MIP y pueden asignar números de MIP.
* Los editores de MIP son administradores del [repositorio de Github de MIP](https://github.com/makerdao/mips).
* Los editores de MIP moderan la [categoría de MIP en el foro](https://forum.makerdao.com/c/mips/14).
* Los editores de MIP son responsables de actualizar el estado de los MIP, como se describe en `MIP0c4`, *El ciclo de vida de MIP*.

#### Facilitador de gobernanza

Los facilitadores de gobernanza operan frentes de votación, organizan reuniones de gobernanza y aceptan MIP que están listos para ser incluidos en el ciclo de gobernanza y, por lo tanto, votados.

Los facilitadores de gobernanza tienen todos los poderes editoriales que tiene un editor de MIP y pueden otorgar estos poderes a los contribuyentes.

##### Autoridad específica del Facilitador de Gobernanza en los procesos MIP0

* El consenso de todos los facilitadores de gobernanza controla la fase 6 del ciclo de vida del MIP. Consulte `MIP0c3`.

Los Facilitadores de Gobernanza se definen como Facilitadores adjuntos a las Unidades Principales con el ID `GOV` en [MIP38: DAO Primitives](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md). Se agregan usando [MIP41: Facilitator Framework](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md).

---

### MIP0c9: Rol de editor de MIP

#### Responsabilidades

MIP Editors refuerza los aspectos administrativos y editoriales del proceso y marco general de MIP. Esto incluye:
- Mantener y administrar el [Portal de MIP](mips.makerdao.com) y el [repositorio de MIP de GitHub](https://github.com/makerdao/mips).
- Proporcionar comentarios en la [sección MIP del foro](https://forum.makerdao.com/c/mips/14).
- Gestión y organización de MIP y Preámbulos de Subpropuestas.

También deben hacer cumplir el proceso de MIP adecuado con responsabilidades tales como:
- Asignación de etiquetas de números formales a los MIP.
- Asegurarse de que los títulos, los estados de MIP y las ubicaciones de categorías realicen un seguimiento de los MIP reales.
- Confirmar que hay un autor (real) dedicado al MIP, coordinador, financiador y/o patrocinador, etc.
- Correspondencia con autores/coordinadores de MIP.
- Revisión de MIP en busca de defectos obvios en el idioma.
- Asegurarse de que los MIP sigan la guía de estilo (plantilla).
- Trabajar y comunicarse con los facilitadores de gobernanza en la coordinación de la gobernanza y los votos ejecutivos en relación con los MIP y el ciclo de gobernanza.

Los editores de MIP pueden corregir los problemas por sí mismos, pero no están obligados a hacerlo.

---

### MIP0c10: Rol del facilitador de gobernanza

#### Responsabilidades principales

- Responsable de garantizar la salud e integridad de los canales de comunicación que se utilizan para la comunicación dentro de MakerDAO. Estas tareas incluyen tareas de moderación, establecimiento de procesos y normas sociales, y defensa de los canales de trolling y ataques de Sybil.
- Se requiere permanecer neutral y objetivo en asuntos fuera del dominio de la gobernanza y centrarse en la política, el procedimiento y la facilitación.
- Requerido para programar, ejecutar y moderar reuniones semanales de gobierno y riesgo desde una posición de neutralidad.
- Requerido para administrar y ejecutar procesos de gobernanza según lo indiquen los MIP aceptados relevantes o los conjuntos de MIP.
- Requerido para crear sondeos en cadena en la interfaz de votación "oficial" según lo indiquen los procesos de gobernanza definidos en los MIP aceptados relevantes o conjuntos de MIP.
- Debe tener como objetivo fomentar una cultura de apertura, receptividad y discusión razonada dentro de la comunidad.
- Debe trabajar con la comunidad para operar un proceso de votación de emergencia para defender el sistema en caso de una emergencia.
- Debe tener como objetivo incorporar y mantener al menos tres facilitadores de gobernanza en todo momento, al mismo tiempo que se da prioridad a los candidatos de regiones geográficas no representadas.

##### Fomentar la participación
- Deben trabajar para mantener y fomentar un debate saludable, de acuerdo con las pautas descritas en el Marco de Riesgo y Gobernanza Científica y los Principios Fundamentales.
- Debe asegurarse de que el próximo calendario de gobernanza se comunique bien a todas las partes interesadas al menos con una semana de anticipación.
- Debe tener como objetivo promover y aumentar la participación de las partes interesadas en el proceso de gobernanza.
- Debe asegurarse de que los nuevos miembros de la comunidad comprendan el nivel general de decoro y cortesía que espera el grupo, y que tengan los recursos que necesitan para incorporarse rápidamente.

##### Mejora de la eficiencia

- Debe garantizar que una vez que el debate llegue a su final natural, se lleven a cabo los métodos adecuados de obtención de consenso.
- Debe apoyar y facilitar las comunicaciones entre los otros actores autorizados en el Protocolo Maker.
- Debe buscar oportunidades para agilizar el proceso de gobernanza sin sacrificar su integridad.

##### Cohesion and Morale
- Responsible for raising community governance issues to the Maker Foundation or the third-party ecosystem and ensuring appropriate follow up for the community.
- Should help to build and maintain morale and engagement among members of the governance community.
- Should encourage the community to come to consensus over the least objectionable option(s) rather than treating decision-making as a competition where a subset of the community must end up disappointed in the outcome.
- Should work to bring the governance community together on divisive topics and to prevent political polarisation and demagoguery.

---

### MIP0c11: Incorporación de personal básico (`OBSOLETO`)
* Dejado obsoleto por Core Unit Framework (consulte [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md)) *

### MIP0c12: Desplazamiento de personal básico (`OBSOLETO`)
* Dejado obsoleto por Core Unit Framework (consulte [MIP38](https://github.com/makerdao/mips/blob/master/MIP38/mip38.md), [MIP39](https://github.com/makerdao/mips/blob/master/MIP39/mip39.md), [MIP40](https://github.com/makerdao/mips/blob/master/MIP40/mip40.md), [MIP41](https://github.com/makerdao/mips/blob/master/MIP41/mip41.md)) *

---

### MIP0c13: Gestión de conjuntos MIP

Algunas estructuras y comportamientos unitarios deben analizarse en partes separadas en más de un MIP. Cuando estos MIP están estrechamente entrelazados, constituyen un conjunto MIP.

#### Etiquetado

Para cualquier conjunto de MIP, sus MIP constituyentes deben compartir una etiqueta común. La etiqueta debe ser definida por los autores y / o editores de MIP y debe cumplir con el siguiente formato:

`nombre corto descriptivo-mipset`

Los autores de MIP suelen introducir conjuntos de MIP como tales, pero si los editores de MIP encuentran que un grupo de MIP sueltos y sin etiquetatar en la fase RFC satisfacen las condiciones para ser un conjunto de MIP, pueden etiquetar estos MIP juntos en un conjunto de MIP formal. En caso de duda, el criterio último debería ser la utilidad y la modularidad.

#### Consideraciones adicionales

Debido a su naturaleza interdependiente, los conjuntos de MIP solo se pueden votar como un bloque, ya que cualquier aprobación parcial resultaría en la incorporación de MIP inconsistentes, incompletos o sin sentido. Del mismo modo, se debe tener especial cuidado al modificar o eliminar MIP dentro de un conjunto MIP.
