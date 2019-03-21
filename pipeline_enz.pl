#1 ) KEEG: Obtener la secuencia de enzimas homólogas (solo las que tienen igual EC number)
#2) PROMALS3D: Alinear las secuencias de 1.
#3) HMMER: Determinar cual es el perfil de frecuencia de reemplazo de las secuencias alineadas en el punto 2 (obtener un archivo  *.hmm).
#4) Determinar la alineación de secuencias de Aa de daphnia, en base al perfil de frecuencia de reemplazo obtenido en 3.
#5) Analizar la alineación de punto 4 y determinar con esta, si la reacción existe en Daphnia.


$keeg = <>;


system "promals uniprot_enzyme.fasta [options] > input_file.log";

#opcion  python promals input_file [options] > input_file.log

$alineamiento = <input_file.log>;
$frecuenciahmmer = <>;



system "hmmbuild $frecuenciahmmer $alineamiento > frecuencia.hmm";


$secuencia_daph = <>;

system "hmmsearch --tblout salida_daph.out frecuencia.hmm $secuencia_daph";



