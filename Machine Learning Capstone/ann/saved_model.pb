¾ý
á¶
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Íð
²
+Adam/recommender_net/item_bias/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*<
shared_name-+Adam/recommender_net/item_bias/embeddings/v
«
?Adam/recommender_net/item_bias/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/item_bias/embeddings/v*
_output_shapes

:~*
dtype0
È
6Adam/recommender_net/item_embedding_layer/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*G
shared_name86Adam/recommender_net/item_embedding_layer/embeddings/v
Á
JAdam/recommender_net/item_embedding_layer/embeddings/v/Read/ReadVariableOpReadVariableOp6Adam/recommender_net/item_embedding_layer/embeddings/v*
_output_shapes

:~*
dtype0
´
+Adam/recommender_net/user_bias/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
í*<
shared_name-+Adam/recommender_net/user_bias/embeddings/v
­
?Adam/recommender_net/user_bias/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/user_bias/embeddings/v* 
_output_shapes
:
í*
dtype0
Ê
6Adam/recommender_net/user_embedding_layer/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
í*G
shared_name86Adam/recommender_net/user_embedding_layer/embeddings/v
Ã
JAdam/recommender_net/user_embedding_layer/embeddings/v/Read/ReadVariableOpReadVariableOp6Adam/recommender_net/user_embedding_layer/embeddings/v* 
_output_shapes
:
í*
dtype0
²
+Adam/recommender_net/item_bias/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*<
shared_name-+Adam/recommender_net/item_bias/embeddings/m
«
?Adam/recommender_net/item_bias/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/item_bias/embeddings/m*
_output_shapes

:~*
dtype0
È
6Adam/recommender_net/item_embedding_layer/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*G
shared_name86Adam/recommender_net/item_embedding_layer/embeddings/m
Á
JAdam/recommender_net/item_embedding_layer/embeddings/m/Read/ReadVariableOpReadVariableOp6Adam/recommender_net/item_embedding_layer/embeddings/m*
_output_shapes

:~*
dtype0
´
+Adam/recommender_net/user_bias/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
í*<
shared_name-+Adam/recommender_net/user_bias/embeddings/m
­
?Adam/recommender_net/user_bias/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/user_bias/embeddings/m* 
_output_shapes
:
í*
dtype0
Ê
6Adam/recommender_net/user_embedding_layer/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
í*G
shared_name86Adam/recommender_net/user_embedding_layer/embeddings/m
Ã
JAdam/recommender_net/user_embedding_layer/embeddings/m/Read/ReadVariableOpReadVariableOp6Adam/recommender_net/user_embedding_layer/embeddings/m* 
_output_shapes
:
í*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
¤
$recommender_net/item_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*5
shared_name&$recommender_net/item_bias/embeddings

8recommender_net/item_bias/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/item_bias/embeddings*
_output_shapes

:~*
dtype0
º
/recommender_net/item_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*@
shared_name1/recommender_net/item_embedding_layer/embeddings
³
Crecommender_net/item_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp/recommender_net/item_embedding_layer/embeddings*
_output_shapes

:~*
dtype0
¦
$recommender_net/user_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
í*5
shared_name&$recommender_net/user_bias/embeddings

8recommender_net/user_bias/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/user_bias/embeddings* 
_output_shapes
:
í*
dtype0
¼
/recommender_net/user_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
í*@
shared_name1/recommender_net/user_embedding_layer/embeddings
µ
Crecommender_net/user_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp/recommender_net/user_embedding_layer/embeddings* 
_output_shapes
:
í*
dtype0

NoOpNoOp
ï-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ª-
value -B- B-
¨
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding_layer
		user_bias

item_embedding_layer
	item_bias
	optimizer
loss

signatures*
 
0
1
2
3*
 
0
1
2
3*

0
1* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
 
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

embeddings*
 
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

embeddings*
 
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

embeddings*
 
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

embeddings*

6iter

7beta_1

8beta_2
	9decay
:learning_ratememfmgmhvivjvkvl*
* 

;serving_default* 
oi
VARIABLE_VALUE/recommender_net/user_embedding_layer/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$recommender_net/user_bias/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/recommender_net/item_embedding_layer/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$recommender_net/item_bias/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

<trace_0* 

=trace_0* 
* 
 
0
	1

2
3*

>0
?1*
* 
* 
* 
* 
* 
* 

0*

0*
	
0* 

@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Etrace_0* 

Ftrace_0* 

0*

0*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 

0*

0*
	
0* 

Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Strace_0* 

Ttrace_0* 

0*

0*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

Ztrace_0* 

[trace_0* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
8
\	variables
]	keras_api
	^total
	_count*
H
`	variables
a	keras_api
	btotal
	ccount
d
_fn_kwargs*
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

^0
_1*

\	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

b0
c1*

`	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUE6Adam/recommender_net/user_embedding_layer/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/recommender_net/user_bias/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/recommender_net/item_embedding_layer/embeddings/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/recommender_net/item_bias/embeddings/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/recommender_net/user_embedding_layer/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/recommender_net/user_bias/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/recommender_net/item_embedding_layer/embeddings/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/recommender_net/item_bias/embeddings/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
ç
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1/recommender_net/user_embedding_layer/embeddings$recommender_net/user_bias/embeddings/recommender_net/item_embedding_layer/embeddings$recommender_net/item_bias/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_26625
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameCrecommender_net/user_embedding_layer/embeddings/Read/ReadVariableOp8recommender_net/user_bias/embeddings/Read/ReadVariableOpCrecommender_net/item_embedding_layer/embeddings/Read/ReadVariableOp8recommender_net/item_bias/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpJAdam/recommender_net/user_embedding_layer/embeddings/m/Read/ReadVariableOp?Adam/recommender_net/user_bias/embeddings/m/Read/ReadVariableOpJAdam/recommender_net/item_embedding_layer/embeddings/m/Read/ReadVariableOp?Adam/recommender_net/item_bias/embeddings/m/Read/ReadVariableOpJAdam/recommender_net/user_embedding_layer/embeddings/v/Read/ReadVariableOp?Adam/recommender_net/user_bias/embeddings/v/Read/ReadVariableOpJAdam/recommender_net/item_embedding_layer/embeddings/v/Read/ReadVariableOp?Adam/recommender_net/item_bias/embeddings/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_26925
Ñ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename/recommender_net/user_embedding_layer/embeddings$recommender_net/user_bias/embeddings/recommender_net/item_embedding_layer/embeddings$recommender_net/item_bias/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount6Adam/recommender_net/user_embedding_layer/embeddings/m+Adam/recommender_net/user_bias/embeddings/m6Adam/recommender_net/item_embedding_layer/embeddings/m+Adam/recommender_net/item_bias/embeddings/m6Adam/recommender_net/user_embedding_layer/embeddings/v+Adam/recommender_net/user_bias/embeddings/v6Adam/recommender_net/item_embedding_layer/embeddings/v+Adam/recommender_net/item_bias/embeddings/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_26998Íù
®
Þ
/__inference_recommender_net_layer_call_fn_26638

inputs	
unknown:
í
	unknown_0:
í
	unknown_1:~
	unknown_2:~
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_recommender_net_layer_call_and_return_conditional_losses_26453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

4__inference_item_embedding_layer_layer_call_fn_26808

inputs	
unknown:~
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26380o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
ÿ
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26380

inputs	(
embedding_lookup_26368:~
identity¢embedding_lookup¢Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_26368inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26368*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26368*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_26368*
_output_shapes

:~*
dtype0Ð
Brecommender_net/item_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:~
Arecommender_net/item_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/item_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/item_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/item_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/item_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp^embedding_lookupR^recommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2¦
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
ÿ
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26823

inputs	(
embedding_lookup_26811:~
identity¢embedding_lookup¢Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_26811inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26811*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26811*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_26811*
_output_shapes

:~*
dtype0Ð
Brecommender_net/item_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:~
Arecommender_net/item_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/item_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/item_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/item_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/item_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp^embedding_lookupR^recommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2¦
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

}
)__inference_item_bias_layer_call_fn_26830

inputs	
unknown:~
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_item_bias_layer_call_and_return_conditional_losses_26397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
¢
D__inference_user_bias_layer_call_and_return_conditional_losses_26357

inputs	*
embedding_lookup_26351:
í
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_26351inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26351*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26351*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26785

inputs	*
embedding_lookup_26773:
í
identity¢embedding_lookup¢Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_26773inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26773*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26773*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_26773* 
_output_shapes
:
í*
dtype0Ò
Brecommender_net/user_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
í
Arecommender_net/user_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/user_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/user_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/user_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/user_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp^embedding_lookupR^recommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2¦
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Êe
Þ
J__inference_recommender_net_layer_call_and_return_conditional_losses_26592
input_1	.
user_embedding_layer_26516:
í#
user_bias_26523:
í,
item_embedding_layer_26530:~!
item_bias_26537:~
identity¢!item_bias/StatefulPartitionedCall¢,item_embedding_layer/StatefulPartitionedCall¢Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp¢Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp¢!user_bias/StatefulPartitionedCall¢,user_embedding_layer/StatefulPartitionedCalld
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
,user_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0user_embedding_layer_26516*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26340f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
!user_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0user_bias_26523*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_user_bias_layer_call_and_return_conditional_losses_26357f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
,item_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0item_embedding_layer_26530*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26380f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
!item_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0item_bias_26537*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_item_bias_layer_call_and_return_conditional_losses_26397_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB t
Tensordot/ShapeShape5user_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¤
Tensordot/transpose	Transpose5user_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB v
Tensordot/Shape_1Shape5item_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:¨
Tensordot/transpose_1	Transpose5item_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: ~
addAddV2Tensordot:output:0*user_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
add_1AddV2add:z:0*item_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
ReluRelu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpuser_embedding_layer_26516* 
_output_shapes
:
í*
dtype0Ò
Brecommender_net/user_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
í
Arecommender_net/user_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/user_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/user_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/user_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/user_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¬
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpitem_embedding_layer_26530*
_output_shapes

:~*
dtype0Ð
Brecommender_net/item_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:~
Arecommender_net/item_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/item_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/item_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/item_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/item_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^item_bias/StatefulPartitionedCall-^item_embedding_layer/StatefulPartitionedCallR^recommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp"^user_bias/StatefulPartitionedCall-^user_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!item_bias/StatefulPartitionedCall!item_bias/StatefulPartitionedCall2\
,item_embedding_layer/StatefulPartitionedCall,item_embedding_layer/StatefulPartitionedCall2¦
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp2¦
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp2F
!user_bias/StatefulPartitionedCall!user_bias/StatefulPartitionedCall2\
,user_embedding_layer/StatefulPartitionedCall,user_embedding_layer/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
·j
´
 __inference__wrapped_model_26314
input_1	O
;recommender_net_user_embedding_layer_embedding_lookup_26242:
íD
0recommender_net_user_bias_embedding_lookup_26251:
íM
;recommender_net_item_embedding_layer_embedding_lookup_26260:~B
0recommender_net_item_bias_embedding_lookup_26269:~
identity¢*recommender_net/item_bias/embedding_lookup¢5recommender_net/item_embedding_layer/embedding_lookup¢*recommender_net/user_bias/embedding_lookup¢5recommender_net/user_embedding_layer/embedding_lookupt
#recommender_net/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%recommender_net/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%recommender_net/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¹
recommender_net/strided_sliceStridedSliceinput_1,recommender_net/strided_slice/stack:output:0.recommender_net/strided_slice/stack_1:output:0.recommender_net/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskÂ
5recommender_net/user_embedding_layer/embedding_lookupResourceGather;recommender_net_user_embedding_layer_embedding_lookup_26242&recommender_net/strided_slice:output:0*
Tindices0	*N
_classD
B@loc:@recommender_net/user_embedding_layer/embedding_lookup/26242*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
>recommender_net/user_embedding_layer/embedding_lookup/IdentityIdentity>recommender_net/user_embedding_layer/embedding_lookup:output:0*
T0*N
_classD
B@loc:@recommender_net/user_embedding_layer/embedding_lookup/26242*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
@recommender_net/user_embedding_layer/embedding_lookup/Identity_1IdentityGrecommender_net/user_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%recommender_net/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_1StridedSliceinput_1.recommender_net/strided_slice_1/stack:output:00recommender_net/strided_slice_1/stack_1:output:00recommender_net/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask£
*recommender_net/user_bias/embedding_lookupResourceGather0recommender_net_user_bias_embedding_lookup_26251(recommender_net/strided_slice_1:output:0*
Tindices0	*C
_class9
75loc:@recommender_net/user_bias/embedding_lookup/26251*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ë
3recommender_net/user_bias/embedding_lookup/IdentityIdentity3recommender_net/user_bias/embedding_lookup:output:0*
T0*C
_class9
75loc:@recommender_net/user_bias/embedding_lookup/26251*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5recommender_net/user_bias/embedding_lookup/Identity_1Identity<recommender_net/user_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%recommender_net/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_2StridedSliceinput_1.recommender_net/strided_slice_2/stack:output:00recommender_net/strided_slice_2/stack_1:output:00recommender_net/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskÄ
5recommender_net/item_embedding_layer/embedding_lookupResourceGather;recommender_net_item_embedding_layer_embedding_lookup_26260(recommender_net/strided_slice_2:output:0*
Tindices0	*N
_classD
B@loc:@recommender_net/item_embedding_layer/embedding_lookup/26260*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
>recommender_net/item_embedding_layer/embedding_lookup/IdentityIdentity>recommender_net/item_embedding_layer/embedding_lookup:output:0*
T0*N
_classD
B@loc:@recommender_net/item_embedding_layer/embedding_lookup/26260*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
@recommender_net/item_embedding_layer/embedding_lookup/Identity_1IdentityGrecommender_net/item_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%recommender_net/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_3StridedSliceinput_1.recommender_net/strided_slice_3/stack:output:00recommender_net/strided_slice_3/stack_1:output:00recommender_net/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask£
*recommender_net/item_bias/embedding_lookupResourceGather0recommender_net_item_bias_embedding_lookup_26269(recommender_net/strided_slice_3:output:0*
Tindices0	*C
_class9
75loc:@recommender_net/item_bias/embedding_lookup/26269*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ë
3recommender_net/item_bias/embedding_lookup/IdentityIdentity3recommender_net/item_bias/embedding_lookup:output:0*
T0*C
_class9
75loc:@recommender_net/item_bias/embedding_lookup/26269*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5recommender_net/item_bias/embedding_lookup/Identity_1Identity<recommender_net/item_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
recommender_net/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       a
recommender_net/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 
recommender_net/Tensordot/ShapeShapeIrecommender_net/user_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:i
'recommender_net/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ù
"recommender_net/Tensordot/GatherV2GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/free:output:00recommender_net/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
$recommender_net/Tensordot/GatherV2_1GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/axes:output:02recommender_net/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
recommender_net/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
recommender_net/Tensordot/ProdProd+recommender_net/Tensordot/GatherV2:output:0(recommender_net/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_1Prod-recommender_net/Tensordot/GatherV2_1:output:0*recommender_net/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%recommender_net/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
 recommender_net/Tensordot/concatConcatV2'recommender_net/Tensordot/free:output:0'recommender_net/Tensordot/axes:output:0.recommender_net/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:©
recommender_net/Tensordot/stackPack'recommender_net/Tensordot/Prod:output:0)recommender_net/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ø
#recommender_net/Tensordot/transpose	TransposeIrecommender_net/user_embedding_layer/embedding_lookup/Identity_1:output:0)recommender_net/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
!recommender_net/Tensordot/ReshapeReshape'recommender_net/Tensordot/transpose:y:0(recommender_net/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿq
 recommender_net/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 
!recommender_net/Tensordot/Shape_1ShapeIrecommender_net/item_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:k
)recommender_net/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net/Tensordot/GatherV2_2GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/free_1:output:02recommender_net/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net/Tensordot/GatherV2_3GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/axes_1:output:02recommender_net/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_2Prod-recommender_net/Tensordot/GatherV2_2:output:0*recommender_net/Tensordot/Const_2:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_3Prod-recommender_net/Tensordot/GatherV2_3:output:0*recommender_net/Tensordot/Const_3:output:0*
T0*
_output_shapes
: i
'recommender_net/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
"recommender_net/Tensordot/concat_1ConcatV2)recommender_net/Tensordot/axes_1:output:0)recommender_net/Tensordot/free_1:output:00recommender_net/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
!recommender_net/Tensordot/stack_1Pack)recommender_net/Tensordot/Prod_3:output:0)recommender_net/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:Ü
%recommender_net/Tensordot/transpose_1	TransposeIrecommender_net/item_embedding_layer/embedding_lookup/Identity_1:output:0+recommender_net/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#recommender_net/Tensordot/Reshape_1Reshape)recommender_net/Tensordot/transpose_1:y:0*recommender_net/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
 recommender_net/Tensordot/MatMulMatMul*recommender_net/Tensordot/Reshape:output:0,recommender_net/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
'recommender_net/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : è
"recommender_net/Tensordot/concat_2ConcatV2+recommender_net/Tensordot/GatherV2:output:0-recommender_net/Tensordot/GatherV2_2:output:00recommender_net/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 
recommender_net/TensordotReshape*recommender_net/Tensordot/MatMul:product:0+recommender_net/Tensordot/concat_2:output:0*
T0*
_output_shapes
: ²
recommender_net/addAddV2"recommender_net/Tensordot:output:0>recommender_net/user_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
recommender_net/add_1AddV2recommender_net/add:z:0>recommender_net/item_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
recommender_net/ReluRelurecommender_net/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentity"recommender_net/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp+^recommender_net/item_bias/embedding_lookup6^recommender_net/item_embedding_layer/embedding_lookup+^recommender_net/user_bias/embedding_lookup6^recommender_net/user_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2X
*recommender_net/item_bias/embedding_lookup*recommender_net/item_bias/embedding_lookup2n
5recommender_net/item_embedding_layer/embedding_lookup5recommender_net/item_embedding_layer/embedding_lookup2X
*recommender_net/user_bias/embedding_lookup*recommender_net/user_bias/embedding_lookup2n
5recommender_net/user_embedding_layer/embedding_lookup5recommender_net/user_embedding_layer/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
§

O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26340

inputs	*
embedding_lookup_26328:
í
identity¢embedding_lookup¢Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp³
embedding_lookupResourceGatherembedding_lookup_26328inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26328*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26328*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_26328* 
_output_shapes
:
í*
dtype0Ò
Brecommender_net/user_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
í
Arecommender_net/user_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/user_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/user_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/user_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/user_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
NoOpNoOp^embedding_lookupR^recommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2¦
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
 
D__inference_item_bias_layer_call_and_return_conditional_losses_26397

inputs	(
embedding_lookup_26391:~
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_26391inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26391*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26391*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù5

__inference__traced_save_26925
file_prefixN
Jsavev2_recommender_net_user_embedding_layer_embeddings_read_readvariableopC
?savev2_recommender_net_user_bias_embeddings_read_readvariableopN
Jsavev2_recommender_net_item_embedding_layer_embeddings_read_readvariableopC
?savev2_recommender_net_item_bias_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopU
Qsavev2_adam_recommender_net_user_embedding_layer_embeddings_m_read_readvariableopJ
Fsavev2_adam_recommender_net_user_bias_embeddings_m_read_readvariableopU
Qsavev2_adam_recommender_net_item_embedding_layer_embeddings_m_read_readvariableopJ
Fsavev2_adam_recommender_net_item_bias_embeddings_m_read_readvariableopU
Qsavev2_adam_recommender_net_user_embedding_layer_embeddings_v_read_readvariableopJ
Fsavev2_adam_recommender_net_user_bias_embeddings_v_read_readvariableopU
Qsavev2_adam_recommender_net_item_embedding_layer_embeddings_v_read_readvariableopJ
Fsavev2_adam_recommender_net_item_bias_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*°	
value¦	B£	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B £
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Jsavev2_recommender_net_user_embedding_layer_embeddings_read_readvariableop?savev2_recommender_net_user_bias_embeddings_read_readvariableopJsavev2_recommender_net_item_embedding_layer_embeddings_read_readvariableop?savev2_recommender_net_item_bias_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopQsavev2_adam_recommender_net_user_embedding_layer_embeddings_m_read_readvariableopFsavev2_adam_recommender_net_user_bias_embeddings_m_read_readvariableopQsavev2_adam_recommender_net_item_embedding_layer_embeddings_m_read_readvariableopFsavev2_adam_recommender_net_item_bias_embeddings_m_read_readvariableopQsavev2_adam_recommender_net_user_embedding_layer_embeddings_v_read_readvariableopFsavev2_adam_recommender_net_user_bias_embeddings_v_read_readvariableopQsavev2_adam_recommender_net_item_embedding_layer_embeddings_v_read_readvariableopFsavev2_adam_recommender_net_item_bias_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*¯
_input_shapes
: :
í:
í:~:~: : : : : : : : : :
í:
í:~:~:
í:
í:~:~: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
í:&"
 
_output_shapes
:
í:$ 

_output_shapes

:~:$ 

_output_shapes

:~:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
í:&"
 
_output_shapes
:
í:$ 

_output_shapes

:~:$ 

_output_shapes

:~:&"
 
_output_shapes
:
í:&"
 
_output_shapes
:
í:$ 

_output_shapes

:~:$ 

_output_shapes

:~:

_output_shapes
: 
û
ð
__inference_loss_fn_1_26763l
Zrecommender_net_item_embedding_layer_embeddings_regularizer_square_readvariableop_resource:~
identity¢Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpì
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpZrecommender_net_item_embedding_layer_embeddings_regularizer_square_readvariableop_resource*
_output_shapes

:~*
dtype0Ð
Brecommender_net/item_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:~
Arecommender_net/item_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/item_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/item_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/item_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/item_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
IdentityIdentityCrecommender_net/item_embedding_layer/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpR^recommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2¦
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp
±
ß
/__inference_recommender_net_layer_call_fn_26464
input_1	
unknown:
í
	unknown_0:
í
	unknown_1:~
	unknown_2:~
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_recommender_net_layer_call_and_return_conditional_losses_26453o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Y

!__inference__traced_restore_26998
file_prefixT
@assignvariableop_recommender_net_user_embedding_layer_embeddings:
íK
7assignvariableop_1_recommender_net_user_bias_embeddings:
íT
Bassignvariableop_2_recommender_net_item_embedding_layer_embeddings:~I
7assignvariableop_3_recommender_net_item_bias_embeddings:~&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: ^
Jassignvariableop_13_adam_recommender_net_user_embedding_layer_embeddings_m:
íS
?assignvariableop_14_adam_recommender_net_user_bias_embeddings_m:
í\
Jassignvariableop_15_adam_recommender_net_item_embedding_layer_embeddings_m:~Q
?assignvariableop_16_adam_recommender_net_item_bias_embeddings_m:~^
Jassignvariableop_17_adam_recommender_net_user_embedding_layer_embeddings_v:
íS
?assignvariableop_18_adam_recommender_net_user_bias_embeddings_v:
í\
Jassignvariableop_19_adam_recommender_net_item_embedding_layer_embeddings_v:~Q
?assignvariableop_20_adam_recommender_net_item_bias_embeddings_v:~
identity_22¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*°	
value¦	B£	B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOpAssignVariableOp@assignvariableop_recommender_net_user_embedding_layer_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_1AssignVariableOp7assignvariableop_1_recommender_net_user_bias_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_2AssignVariableOpBassignvariableop_2_recommender_net_item_embedding_layer_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_3AssignVariableOp7assignvariableop_3_recommender_net_item_bias_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_13AssignVariableOpJassignvariableop_13_adam_recommender_net_user_embedding_layer_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_14AssignVariableOp?assignvariableop_14_adam_recommender_net_user_bias_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_15AssignVariableOpJassignvariableop_15_adam_recommender_net_item_embedding_layer_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_16AssignVariableOp?assignvariableop_16_adam_recommender_net_item_bias_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_17AssignVariableOpJassignvariableop_17_adam_recommender_net_user_embedding_layer_embeddings_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_18AssignVariableOp?assignvariableop_18_adam_recommender_net_user_bias_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_19AssignVariableOpJassignvariableop_19_adam_recommender_net_item_embedding_layer_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_20AssignVariableOp?assignvariableop_20_adam_recommender_net_item_bias_embeddings_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¬
¢
D__inference_user_bias_layer_call_and_return_conditional_losses_26801

inputs	*
embedding_lookup_26795:
í
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_26795inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26795*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26795*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª

4__inference_user_embedding_layer_layer_call_fn_26770

inputs	
unknown:
í
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26340o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õl

J__inference_recommender_net_layer_call_and_return_conditional_losses_26729

inputs	?
+user_embedding_layer_embedding_lookup_26645:
í4
 user_bias_embedding_lookup_26654:
í=
+item_embedding_layer_embedding_lookup_26663:~2
 item_bias_embedding_lookup_26672:~
identity¢item_bias/embedding_lookup¢%item_embedding_layer/embedding_lookup¢Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp¢Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp¢user_bias/embedding_lookup¢%user_embedding_layer/embedding_lookupd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
%user_embedding_layer/embedding_lookupResourceGather+user_embedding_layer_embedding_lookup_26645strided_slice:output:0*
Tindices0	*>
_class4
20loc:@user_embedding_layer/embedding_lookup/26645*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ü
.user_embedding_layer/embedding_lookup/IdentityIdentity.user_embedding_layer/embedding_lookup:output:0*
T0*>
_class4
20loc:@user_embedding_layer/embedding_lookup/26645*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0user_embedding_layer/embedding_lookup/Identity_1Identity7user_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskã
user_bias/embedding_lookupResourceGather user_bias_embedding_lookup_26654strided_slice_1:output:0*
Tindices0	*3
_class)
'%loc:@user_bias/embedding_lookup/26654*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0»
#user_bias/embedding_lookup/IdentityIdentity#user_bias/embedding_lookup:output:0*
T0*3
_class)
'%loc:@user_bias/embedding_lookup/26654*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%user_bias/embedding_lookup/Identity_1Identity,user_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
%item_embedding_layer/embedding_lookupResourceGather+item_embedding_layer_embedding_lookup_26663strided_slice_2:output:0*
Tindices0	*>
_class4
20loc:@item_embedding_layer/embedding_lookup/26663*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ü
.item_embedding_layer/embedding_lookup/IdentityIdentity.item_embedding_layer/embedding_lookup:output:0*
T0*>
_class4
20loc:@item_embedding_layer/embedding_lookup/26663*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0item_embedding_layer/embedding_lookup/Identity_1Identity7item_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskã
item_bias/embedding_lookupResourceGather item_bias_embedding_lookup_26672strided_slice_3:output:0*
Tindices0	*3
_class)
'%loc:@item_bias/embedding_lookup/26672*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0»
#item_bias/embedding_lookup/IdentityIdentity#item_bias/embedding_lookup:output:0*
T0*3
_class)
'%loc:@item_bias/embedding_lookup/26672*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%item_bias/embedding_lookup/Identity_1Identity,item_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB x
Tensordot/ShapeShape9user_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¨
Tensordot/transpose	Transpose9user_embedding_layer/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB z
Tensordot/Shape_1Shape9item_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:¬
Tensordot/transpose_1	Transpose9item_embedding_layer/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0.user_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
add_1AddV2add:z:0.item_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
ReluRelu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+user_embedding_layer_embedding_lookup_26645* 
_output_shapes
:
í*
dtype0Ò
Brecommender_net/user_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
í
Arecommender_net/user_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/user_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/user_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/user_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/user_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ½
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+item_embedding_layer_embedding_lookup_26663*
_output_shapes

:~*
dtype0Ð
Brecommender_net/item_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:~
Arecommender_net/item_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/item_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/item_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/item_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/item_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp^item_bias/embedding_lookup&^item_embedding_layer/embedding_lookupR^recommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp^user_bias/embedding_lookup&^user_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 28
item_bias/embedding_lookupitem_bias/embedding_lookup2N
%item_embedding_layer/embedding_lookup%item_embedding_layer/embedding_lookup2¦
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp2¦
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp28
user_bias/embedding_lookupuser_bias/embedding_lookup2N
%user_embedding_layer/embedding_lookup%user_embedding_layer/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
 
D__inference_item_bias_layer_call_and_return_conditional_losses_26839

inputs	(
embedding_lookup_26833:~
identity¢embedding_lookup³
embedding_lookupResourceGatherembedding_lookup_26833inputs*
Tindices0	*)
_class
loc:@embedding_lookup/26833*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/26833*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ò
__inference_loss_fn_0_26752n
Zrecommender_net_user_embedding_layer_embeddings_regularizer_square_readvariableop_resource:
í
identity¢Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpî
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpZrecommender_net_user_embedding_layer_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
í*
dtype0Ò
Brecommender_net/user_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
í
Arecommender_net/user_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/user_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/user_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/user_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/user_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
IdentityIdentityCrecommender_net/user_embedding_layer/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2¦
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp
û
Ó
#__inference_signature_wrapper_26625
input_1	
unknown:
í
	unknown_0:
í
	unknown_1:~
	unknown_2:~
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_26314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Äe
Ý
J__inference_recommender_net_layer_call_and_return_conditional_losses_26453

inputs	.
user_embedding_layer_26341:
í#
user_bias_26358:
í,
item_embedding_layer_26381:~!
item_bias_26398:~
identity¢!item_bias/StatefulPartitionedCall¢,item_embedding_layer/StatefulPartitionedCall¢Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp¢Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp¢!user_bias/StatefulPartitionedCall¢,user_embedding_layer/StatefulPartitionedCalld
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
,user_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0user_embedding_layer_26341*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26340f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
!user_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0user_bias_26358*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_user_bias_layer_call_and_return_conditional_losses_26357f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask
,item_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0item_embedding_layer_26381*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26380f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
!item_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0item_bias_26398*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_item_bias_layer_call_and_return_conditional_losses_26397_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB t
Tensordot/ShapeShape5user_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¤
Tensordot/transpose	Transpose5user_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB v
Tensordot/Shape_1Shape5item_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:¨
Tensordot/transpose_1	Transpose5item_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: ~
addAddV2Tensordot:output:0*user_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
add_1AddV2add:z:0*item_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
ReluRelu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpuser_embedding_layer_26341* 
_output_shapes
:
í*
dtype0Ò
Brecommender_net/user_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
í
Arecommender_net/user_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/user_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/user_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/user_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/user_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ¬
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpitem_embedding_layer_26381*
_output_shapes

:~*
dtype0Ð
Brecommender_net/item_embedding_layer/embeddings/Regularizer/SquareSquareYrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:~
Arecommender_net/item_embedding_layer/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       û
?recommender_net/item_embedding_layer/embeddings/Regularizer/SumSumFrecommender_net/item_embedding_layer/embeddings/Regularizer/Square:y:0Jrecommender_net/item_embedding_layer/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75ý
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Hrecommender_net/item_embedding_layer/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^item_bias/StatefulPartitionedCall-^item_embedding_layer/StatefulPartitionedCallR^recommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp"^user_bias/StatefulPartitionedCall-^user_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!item_bias/StatefulPartitionedCall!item_bias/StatefulPartitionedCall2\
,item_embedding_layer/StatefulPartitionedCall,item_embedding_layer/StatefulPartitionedCall2¦
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp2¦
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/Square/ReadVariableOp2F
!user_bias/StatefulPartitionedCall!user_bias/StatefulPartitionedCall2\
,user_embedding_layer/StatefulPartitionedCall,user_embedding_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


)__inference_user_bias_layer_call_fn_26792

inputs	
unknown:
í
identity¢StatefulPartitionedCallÌ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_user_bias_layer_call_and_return_conditional_losses_26357o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:©t
½
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding_layer
		user_bias

item_embedding_layer
	item_bias
	optimizer
loss

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
¾
trace_0
trace_12
/__inference_recommender_net_layer_call_fn_26464
/__inference_recommender_net_layer_call_fn_26638¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
ô
trace_0
trace_12½
J__inference_recommender_net_layer_call_and_return_conditional_losses_26729
J__inference_recommender_net_layer_call_and_return_conditional_losses_26592¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
ËBÈ
 __inference__wrapped_model_26314input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
µ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer

6iter

7beta_1

8beta_2
	9decay
:learning_ratememfmgmhvivjvkvl"
	optimizer
 "
trackable_dict_wrapper
,
;serving_default"
signature_map
C:A
í2/recommender_net/user_embedding_layer/embeddings
8:6
í2$recommender_net/user_bias/embeddings
A:?~2/recommender_net/item_embedding_layer/embeddings
6:4~2$recommender_net/item_bias/embeddings
Ì
<trace_02¯
__inference_loss_fn_0_26752
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z<trace_0
Ì
=trace_02¯
__inference_loss_fn_1_26763
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z=trace_0
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
äBá
/__inference_recommender_net_layer_call_fn_26464input_1"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ãBà
/__inference_recommender_net_layer_call_fn_26638inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_recommender_net_layer_call_and_return_conditional_losses_26729inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÿBü
J__inference_recommender_net_layer_call_and_return_conditional_losses_26592input_1"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ø
Etrace_02Û
4__inference_user_embedding_layer_layer_call_fn_26770¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zEtrace_0

Ftrace_02ö
O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26785¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zFtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
í
Ltrace_02Ð
)__inference_user_bias_layer_call_fn_26792¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zLtrace_0

Mtrace_02ë
D__inference_user_bias_layer_call_and_return_conditional_losses_26801¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zMtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ø
Strace_02Û
4__inference_item_embedding_layer_layer_call_fn_26808¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zStrace_0

Ttrace_02ö
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26823¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zTtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
í
Ztrace_02Ð
)__inference_item_bias_layer_call_fn_26830¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zZtrace_0

[trace_02ë
D__inference_item_bias_layer_call_and_return_conditional_losses_26839¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z[trace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÊBÇ
#__inference_signature_wrapper_26625input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
²B¯
__inference_loss_fn_0_26752"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²B¯
__inference_loss_fn_1_26763"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
N
\	variables
]	keras_api
	^total
	_count"
_tf_keras_metric
^
`	variables
a	keras_api
	btotal
	ccount
d
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
èBå
4__inference_user_embedding_layer_layer_call_fn_26770inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26785inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_user_bias_layer_call_fn_26792inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_user_bias_layer_call_and_return_conditional_losses_26801inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
èBå
4__inference_item_embedding_layer_layer_call_fn_26808inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26823inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_item_bias_layer_call_fn_26830inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_item_bias_layer_call_and_return_conditional_losses_26839inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
^0
_1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
.
b0
c1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
H:F
í26Adam/recommender_net/user_embedding_layer/embeddings/m
=:;
í2+Adam/recommender_net/user_bias/embeddings/m
F:D~26Adam/recommender_net/item_embedding_layer/embeddings/m
;:9~2+Adam/recommender_net/item_bias/embeddings/m
H:F
í26Adam/recommender_net/user_embedding_layer/embeddings/v
=:;
í2+Adam/recommender_net/user_bias/embeddings/v
F:D~26Adam/recommender_net/item_embedding_layer/embeddings/v
;:9~2+Adam/recommender_net/item_bias/embeddings/v
 __inference__wrapped_model_26314m0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
D__inference_item_bias_layer_call_and_return_conditional_losses_26839W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 w
)__inference_item_bias_layer_call_fn_26830J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿª
O__inference_item_embedding_layer_layer_call_and_return_conditional_losses_26823W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
4__inference_item_embedding_layer_layer_call_fn_26808J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ:
__inference_loss_fn_0_26752¢

¢ 
ª " :
__inference_loss_fn_1_26763¢

¢ 
ª " ­
J__inference_recommender_net_layer_call_and_return_conditional_losses_26592_0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¬
J__inference_recommender_net_layer_call_and_return_conditional_losses_26729^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_recommender_net_layer_call_fn_26464R0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_recommender_net_layer_call_fn_26638Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
#__inference_signature_wrapper_26625x;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
D__inference_user_bias_layer_call_and_return_conditional_losses_26801W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 w
)__inference_user_bias_layer_call_fn_26792J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿª
O__inference_user_embedding_layer_layer_call_and_return_conditional_losses_26785W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
4__inference_user_embedding_layer_layer_call_fn_26770J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ