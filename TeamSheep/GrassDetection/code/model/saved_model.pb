��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0
�
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:<*
dtype0
~
Adam/hidden2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameAdam/hidden2/bias/v
w
'Adam/hidden2/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden2/bias/v*
_output_shapes
:<*
dtype0
�
Adam/hidden2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*&
shared_nameAdam/hidden2/kernel/v

)Adam/hidden2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden2/kernel/v*
_output_shapes

:<<*
dtype0
~
Adam/hidden1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameAdam/hidden1/bias/v
w
'Adam/hidden1/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden1/bias/v*
_output_shapes
:<*
dtype0
�
Adam/hidden1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*&
shared_nameAdam/hidden1/kernel/v

)Adam/hidden1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden1/kernel/v*
_output_shapes

:<*
dtype0
z
Adam/input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/input/bias/v
s
%Adam/input/bias/v/Read/ReadVariableOpReadVariableOpAdam/input/bias/v*
_output_shapes
:*
dtype0
�
Adam/input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/input/kernel/v
{
'Adam/input/kernel/v/Read/ReadVariableOpReadVariableOpAdam/input/kernel/v*
_output_shapes

:*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
�
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:<*
dtype0
~
Adam/hidden2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameAdam/hidden2/bias/m
w
'Adam/hidden2/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden2/bias/m*
_output_shapes
:<*
dtype0
�
Adam/hidden2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*&
shared_nameAdam/hidden2/kernel/m

)Adam/hidden2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden2/kernel/m*
_output_shapes

:<<*
dtype0
~
Adam/hidden1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameAdam/hidden1/bias/m
w
'Adam/hidden1/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden1/bias/m*
_output_shapes
:<*
dtype0
�
Adam/hidden1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*&
shared_nameAdam/hidden1/kernel/m

)Adam/hidden1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden1/kernel/m*
_output_shapes

:<*
dtype0
z
Adam/input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/input/bias/m
s
%Adam/input/bias/m/Read/ReadVariableOpReadVariableOpAdam/input/bias/m*
_output_shapes
:*
dtype0
�
Adam/input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/input/kernel/m
{
'Adam/input/kernel/m/Read/ReadVariableOpReadVariableOpAdam/input/kernel/m*
_output_shapes

:*
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
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:<*
dtype0
p
hidden2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namehidden2/bias
i
 hidden2/bias/Read/ReadVariableOpReadVariableOphidden2/bias*
_output_shapes
:<*
dtype0
x
hidden2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*
shared_namehidden2/kernel
q
"hidden2/kernel/Read/ReadVariableOpReadVariableOphidden2/kernel*
_output_shapes

:<<*
dtype0
p
hidden1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namehidden1/bias
i
 hidden1/bias/Read/ReadVariableOpReadVariableOphidden1/bias*
_output_shapes
:<*
dtype0
x
hidden1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*
shared_namehidden1/kernel
q
"hidden1/kernel/Read/ReadVariableOpReadVariableOphidden1/kernel*
_output_shapes

:<*
dtype0
l

input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
input/bias
e
input/bias/Read/ReadVariableOpReadVariableOp
input/bias*
_output_shapes
:*
dtype0
t
input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameinput/kernel
m
 input/kernel/Read/ReadVariableOpReadVariableOpinput/kernel*
_output_shapes

:*
dtype0
~
serving_default_input_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_inputinput/kernel
input/biashidden1/kernelhidden1/biashidden2/kernelhidden2/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_4706

NoOpNoOp
�:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�:
value�:B�: B�:
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
# _self_saveable_object_factories*
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
#2_self_saveable_object_factories*
<
0
1
2
3
'4
(5
06
17*
<
0
1
2
3
'4
(5
06
17*
* 
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
8trace_0
9trace_1
:trace_2
;trace_3* 
6
<trace_0
=trace_1
>trace_2
?trace_3* 
* 
�
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemmmnmomp'mq(mr0ms1mtvuvvvwvx'vy(vz0v{1v|*

Eserving_default* 
* 

0
1*

0
1*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
\V
VARIABLE_VALUEinput/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
input/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Rtrace_0* 

Strace_0* 
^X
VARIABLE_VALUEhidden1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEhidden1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0
(1*

'0
(1*
* 
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

Ytrace_0* 

Ztrace_0* 
^X
VARIABLE_VALUEhidden2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEhidden2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*

00
11*
* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

`trace_0* 

atrace_0* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
0
1
2
3*

b0
c1*
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
8
d	variables
e	keras_api
	ftotal
	gcount*
H
h	variables
i	keras_api
	jtotal
	kcount
l
_fn_kwargs*

f0
g1*

d	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

j0
k1*

h	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUEAdam/input/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/input/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/hidden1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/hidden1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/hidden2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/hidden2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/input/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/input/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/hidden1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/hidden1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/hidden2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/hidden2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename input/kernel/Read/ReadVariableOpinput/bias/Read/ReadVariableOp"hidden1/kernel/Read/ReadVariableOp hidden1/bias/Read/ReadVariableOp"hidden2/kernel/Read/ReadVariableOp hidden2/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/input/kernel/m/Read/ReadVariableOp%Adam/input/bias/m/Read/ReadVariableOp)Adam/hidden1/kernel/m/Read/ReadVariableOp'Adam/hidden1/bias/m/Read/ReadVariableOp)Adam/hidden2/kernel/m/Read/ReadVariableOp'Adam/hidden2/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp'Adam/input/kernel/v/Read/ReadVariableOp%Adam/input/bias/v/Read/ReadVariableOp)Adam/hidden1/kernel/v/Read/ReadVariableOp'Adam/hidden1/bias/v/Read/ReadVariableOp)Adam/hidden2/kernel/v/Read/ReadVariableOp'Adam/hidden2/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8� *&
f!R
__inference__traced_save_5014
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameinput/kernel
input/biashidden1/kernelhidden1/biashidden2/kernelhidden2/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/input/kernel/mAdam/input/bias/mAdam/hidden1/kernel/mAdam/hidden1/bias/mAdam/hidden2/kernel/mAdam/hidden2/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/input/kernel/vAdam/input/bias/vAdam/hidden1/kernel/vAdam/hidden1/bias/vAdam/hidden2/kernel/vAdam/hidden2/bias/vAdam/output/kernel/vAdam/output/bias/v*-
Tin&
$2"*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_5123��
�
�
&__inference_hidden1_layer_call_fn_4841

inputs
unknown:<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden1_layer_call_and_return_conditional_losses_4442o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_4589

inputs

input_4568:

input_4570:
hidden1_4573:<
hidden1_4575:<
hidden2_4578:<<
hidden2_4580:<
output_4583:<
output_4585:
identity��hidden1/StatefulPartitionedCall�hidden2/StatefulPartitionedCall�input/StatefulPartitionedCall�output/StatefulPartitionedCall�
input/StatefulPartitionedCallStatefulPartitionedCallinputs
input_4568
input_4570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_4425�
hidden1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0hidden1_4573hidden1_4575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden1_layer_call_and_return_conditional_losses_4442�
hidden2/StatefulPartitionedCallStatefulPartitionedCall(hidden1/StatefulPartitionedCall:output:0hidden2_4578hidden2_4580*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden2_layer_call_and_return_conditional_losses_4459�
output/StatefulPartitionedCallStatefulPartitionedCall(hidden2/StatefulPartitionedCall:output:0output_4583output_4585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_4476v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^hidden1/StatefulPartitionedCall ^hidden2/StatefulPartitionedCall^input/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
hidden1/StatefulPartitionedCallhidden1/StatefulPartitionedCall2B
hidden2/StatefulPartitionedCallhidden2/StatefulPartitionedCall2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_hidden2_layer_call_and_return_conditional_losses_4459

inputs0
matmul_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������<a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_4677
input_input

input_4656:

input_4658:
hidden1_4661:<
hidden1_4663:<
hidden2_4666:<<
hidden2_4668:<
output_4671:<
output_4673:
identity��hidden1/StatefulPartitionedCall�hidden2/StatefulPartitionedCall�input/StatefulPartitionedCall�output/StatefulPartitionedCall�
input/StatefulPartitionedCallStatefulPartitionedCallinput_input
input_4656
input_4658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_4425�
hidden1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0hidden1_4661hidden1_4663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden1_layer_call_and_return_conditional_losses_4442�
hidden2/StatefulPartitionedCallStatefulPartitionedCall(hidden1/StatefulPartitionedCall:output:0hidden2_4666hidden2_4668*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden2_layer_call_and_return_conditional_losses_4459�
output/StatefulPartitionedCallStatefulPartitionedCall(hidden2/StatefulPartitionedCall:output:0output_4671output_4673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_4476v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^hidden1/StatefulPartitionedCall ^hidden2/StatefulPartitionedCall^input/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
hidden1/StatefulPartitionedCallhidden1/StatefulPartitionedCall2B
hidden2/StatefulPartitionedCallhidden2/StatefulPartitionedCall2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_input
�#
�
D__inference_sequential_layer_call_and_return_conditional_losses_4812

inputs6
$input_matmul_readvariableop_resource:3
%input_biasadd_readvariableop_resource:8
&hidden1_matmul_readvariableop_resource:<5
'hidden1_biasadd_readvariableop_resource:<8
&hidden2_matmul_readvariableop_resource:<<5
'hidden2_biasadd_readvariableop_resource:<7
%output_matmul_readvariableop_resource:<4
&output_biasadd_readvariableop_resource:
identity��hidden1/BiasAdd/ReadVariableOp�hidden1/MatMul/ReadVariableOp�hidden2/BiasAdd/ReadVariableOp�hidden2/MatMul/ReadVariableOp�input/BiasAdd/ReadVariableOp�input/MatMul/ReadVariableOp�output/BiasAdd/ReadVariableOp�output/MatMul/ReadVariableOp�
input/MatMul/ReadVariableOpReadVariableOp$input_matmul_readvariableop_resource*
_output_shapes

:*
dtype0u
input/MatMulMatMulinputs#input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
input/BiasAdd/ReadVariableOpReadVariableOp%input_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
input/BiasAddBiasAddinput/MatMul:product:0$input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\

input/ReluReluinput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0�
hidden1/MatMulMatMulinput/Relu:activations:0%hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
hidden1/BiasAddBiasAddhidden1/MatMul:product:0&hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<`
hidden1/ReluReluhidden1/BiasAdd:output:0*
T0*'
_output_shapes
:���������<�
hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:<<*
dtype0�
hidden2/MatMulMatMulhidden1/Relu:activations:0%hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
hidden2/BiasAddBiasAddhidden2/MatMul:product:0&hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<`
hidden2/ReluReluhidden2/BiasAdd:output:0*
T0*'
_output_shapes
:���������<�
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0�
output/MatMulMatMulhidden2/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^hidden1/BiasAdd/ReadVariableOp^hidden1/MatMul/ReadVariableOp^hidden2/BiasAdd/ReadVariableOp^hidden2/MatMul/ReadVariableOp^input/BiasAdd/ReadVariableOp^input/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2@
hidden1/BiasAdd/ReadVariableOphidden1/BiasAdd/ReadVariableOp2>
hidden1/MatMul/ReadVariableOphidden1/MatMul/ReadVariableOp2@
hidden2/BiasAdd/ReadVariableOphidden2/BiasAdd/ReadVariableOp2>
hidden2/MatMul/ReadVariableOphidden2/MatMul/ReadVariableOp2<
input/BiasAdd/ReadVariableOpinput/BiasAdd/ReadVariableOp2:
input/MatMul/ReadVariableOpinput/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_4653
input_input

input_4632:

input_4634:
hidden1_4637:<
hidden1_4639:<
hidden2_4642:<<
hidden2_4644:<
output_4647:<
output_4649:
identity��hidden1/StatefulPartitionedCall�hidden2/StatefulPartitionedCall�input/StatefulPartitionedCall�output/StatefulPartitionedCall�
input/StatefulPartitionedCallStatefulPartitionedCallinput_input
input_4632
input_4634*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_4425�
hidden1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0hidden1_4637hidden1_4639*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden1_layer_call_and_return_conditional_losses_4442�
hidden2/StatefulPartitionedCallStatefulPartitionedCall(hidden1/StatefulPartitionedCall:output:0hidden2_4642hidden2_4644*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden2_layer_call_and_return_conditional_losses_4459�
output/StatefulPartitionedCallStatefulPartitionedCall(hidden2/StatefulPartitionedCall:output:0output_4647output_4649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_4476v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^hidden1/StatefulPartitionedCall ^hidden2/StatefulPartitionedCall^input/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
hidden1/StatefulPartitionedCallhidden1/StatefulPartitionedCall2B
hidden2/StatefulPartitionedCallhidden2/StatefulPartitionedCall2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_input
�

�
@__inference_output_layer_call_and_return_conditional_losses_4476

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�#
�
D__inference_sequential_layer_call_and_return_conditional_losses_4780

inputs6
$input_matmul_readvariableop_resource:3
%input_biasadd_readvariableop_resource:8
&hidden1_matmul_readvariableop_resource:<5
'hidden1_biasadd_readvariableop_resource:<8
&hidden2_matmul_readvariableop_resource:<<5
'hidden2_biasadd_readvariableop_resource:<7
%output_matmul_readvariableop_resource:<4
&output_biasadd_readvariableop_resource:
identity��hidden1/BiasAdd/ReadVariableOp�hidden1/MatMul/ReadVariableOp�hidden2/BiasAdd/ReadVariableOp�hidden2/MatMul/ReadVariableOp�input/BiasAdd/ReadVariableOp�input/MatMul/ReadVariableOp�output/BiasAdd/ReadVariableOp�output/MatMul/ReadVariableOp�
input/MatMul/ReadVariableOpReadVariableOp$input_matmul_readvariableop_resource*
_output_shapes

:*
dtype0u
input/MatMulMatMulinputs#input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
input/BiasAdd/ReadVariableOpReadVariableOp%input_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
input/BiasAddBiasAddinput/MatMul:product:0$input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\

input/ReluReluinput/BiasAdd:output:0*
T0*'
_output_shapes
:����������
hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0�
hidden1/MatMulMatMulinput/Relu:activations:0%hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
hidden1/BiasAddBiasAddhidden1/MatMul:product:0&hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<`
hidden1/ReluReluhidden1/BiasAdd:output:0*
T0*'
_output_shapes
:���������<�
hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource*
_output_shapes

:<<*
dtype0�
hidden2/MatMulMatMulhidden1/Relu:activations:0%hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
hidden2/BiasAddBiasAddhidden2/MatMul:product:0&hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<`
hidden2/ReluReluhidden2/BiasAdd:output:0*
T0*'
_output_shapes
:���������<�
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0�
output/MatMulMatMulhidden2/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^hidden1/BiasAdd/ReadVariableOp^hidden1/MatMul/ReadVariableOp^hidden2/BiasAdd/ReadVariableOp^hidden2/MatMul/ReadVariableOp^input/BiasAdd/ReadVariableOp^input/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2@
hidden1/BiasAdd/ReadVariableOphidden1/BiasAdd/ReadVariableOp2>
hidden1/MatMul/ReadVariableOphidden1/MatMul/ReadVariableOp2@
hidden2/BiasAdd/ReadVariableOphidden2/BiasAdd/ReadVariableOp2>
hidden2/MatMul/ReadVariableOphidden2/MatMul/ReadVariableOp2<
input/BiasAdd/ReadVariableOpinput/BiasAdd/ReadVariableOp2:
input/MatMul/ReadVariableOpinput/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_hidden2_layer_call_and_return_conditional_losses_4872

inputs0
matmul_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������<a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�	
�
"__inference_signature_wrapper_4706
input_input
unknown:
	unknown_0:
	unknown_1:<
	unknown_2:<
	unknown_3:<<
	unknown_4:<
	unknown_5:<
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_4407o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_input
�
�
&__inference_hidden2_layer_call_fn_4861

inputs
unknown:<<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden2_layer_call_and_return_conditional_losses_4459o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�

�
A__inference_hidden1_layer_call_and_return_conditional_losses_4442

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������<a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
A__inference_hidden1_layer_call_and_return_conditional_losses_4852

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������<a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
 __inference__traced_restore_5123
file_prefix/
assignvariableop_input_kernel:+
assignvariableop_1_input_bias:3
!assignvariableop_2_hidden1_kernel:<-
assignvariableop_3_hidden1_bias:<3
!assignvariableop_4_hidden2_kernel:<<-
assignvariableop_5_hidden2_bias:<2
 assignvariableop_6_output_kernel:<,
assignvariableop_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: 9
'assignvariableop_17_adam_input_kernel_m:3
%assignvariableop_18_adam_input_bias_m:;
)assignvariableop_19_adam_hidden1_kernel_m:<5
'assignvariableop_20_adam_hidden1_bias_m:<;
)assignvariableop_21_adam_hidden2_kernel_m:<<5
'assignvariableop_22_adam_hidden2_bias_m:<:
(assignvariableop_23_adam_output_kernel_m:<4
&assignvariableop_24_adam_output_bias_m:9
'assignvariableop_25_adam_input_kernel_v:3
%assignvariableop_26_adam_input_bias_v:;
)assignvariableop_27_adam_hidden1_kernel_v:<5
'assignvariableop_28_adam_hidden1_bias_v:<;
)assignvariableop_29_adam_hidden2_kernel_v:<<5
'assignvariableop_30_adam_hidden2_bias_v:<:
(assignvariableop_31_adam_output_kernel_v:<4
&assignvariableop_32_adam_output_bias_v:
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_input_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_input_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_hidden1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_hidden1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_hidden2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_hidden2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_input_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_input_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_hidden1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_hidden1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_hidden2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_hidden2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_input_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_input_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_hidden1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_hidden1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_hidden2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_hidden2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
�E
�
__inference__traced_save_5014
file_prefix+
'savev2_input_kernel_read_readvariableop)
%savev2_input_bias_read_readvariableop-
)savev2_hidden1_kernel_read_readvariableop+
'savev2_hidden1_bias_read_readvariableop-
)savev2_hidden2_kernel_read_readvariableop+
'savev2_hidden2_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_input_kernel_m_read_readvariableop0
,savev2_adam_input_bias_m_read_readvariableop4
0savev2_adam_hidden1_kernel_m_read_readvariableop2
.savev2_adam_hidden1_bias_m_read_readvariableop4
0savev2_adam_hidden2_kernel_m_read_readvariableop2
.savev2_adam_hidden2_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop2
.savev2_adam_input_kernel_v_read_readvariableop0
,savev2_adam_input_bias_v_read_readvariableop4
0savev2_adam_hidden1_kernel_v_read_readvariableop2
.savev2_adam_hidden1_bias_v_read_readvariableop4
0savev2_adam_hidden2_kernel_v_read_readvariableop2
.savev2_adam_hidden2_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_input_kernel_read_readvariableop%savev2_input_bias_read_readvariableop)savev2_hidden1_kernel_read_readvariableop'savev2_hidden1_bias_read_readvariableop)savev2_hidden2_kernel_read_readvariableop'savev2_hidden2_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_input_kernel_m_read_readvariableop,savev2_adam_input_bias_m_read_readvariableop0savev2_adam_hidden1_kernel_m_read_readvariableop.savev2_adam_hidden1_bias_m_read_readvariableop0savev2_adam_hidden2_kernel_m_read_readvariableop.savev2_adam_hidden2_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop.savev2_adam_input_kernel_v_read_readvariableop,savev2_adam_input_bias_v_read_readvariableop0savev2_adam_hidden1_kernel_v_read_readvariableop.savev2_adam_hidden1_bias_v_read_readvariableop0savev2_adam_hidden2_kernel_v_read_readvariableop.savev2_adam_hidden2_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::<:<:<<:<:<:: : : : : : : : : :::<:<:<<:<:<::::<:<:<<:<:<:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:<: 

_output_shapes
:<:$ 

_output_shapes

:<<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:<: 

_output_shapes
:<:$ 

_output_shapes

:<<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:<: 

_output_shapes
:<:$ 

_output_shapes

:<<: 

_output_shapes
:<:$  

_output_shapes

:<: !

_output_shapes
::"

_output_shapes
: 
�
�
$__inference_input_layer_call_fn_4821

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_4425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
)__inference_sequential_layer_call_fn_4727

inputs
unknown:
	unknown_0:
	unknown_1:<
	unknown_2:<
	unknown_3:<<
	unknown_4:<
	unknown_5:<
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�*
�
__inference__wrapped_model_4407
input_inputA
/sequential_input_matmul_readvariableop_resource:>
0sequential_input_biasadd_readvariableop_resource:C
1sequential_hidden1_matmul_readvariableop_resource:<@
2sequential_hidden1_biasadd_readvariableop_resource:<C
1sequential_hidden2_matmul_readvariableop_resource:<<@
2sequential_hidden2_biasadd_readvariableop_resource:<B
0sequential_output_matmul_readvariableop_resource:<?
1sequential_output_biasadd_readvariableop_resource:
identity��)sequential/hidden1/BiasAdd/ReadVariableOp�(sequential/hidden1/MatMul/ReadVariableOp�)sequential/hidden2/BiasAdd/ReadVariableOp�(sequential/hidden2/MatMul/ReadVariableOp�'sequential/input/BiasAdd/ReadVariableOp�&sequential/input/MatMul/ReadVariableOp�(sequential/output/BiasAdd/ReadVariableOp�'sequential/output/MatMul/ReadVariableOp�
&sequential/input/MatMul/ReadVariableOpReadVariableOp/sequential_input_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential/input/MatMulMatMulinput_input.sequential/input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'sequential/input/BiasAdd/ReadVariableOpReadVariableOp0sequential_input_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/input/BiasAddBiasAdd!sequential/input/MatMul:product:0/sequential/input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
sequential/input/ReluRelu!sequential/input/BiasAdd:output:0*
T0*'
_output_shapes
:����������
(sequential/hidden1/MatMul/ReadVariableOpReadVariableOp1sequential_hidden1_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0�
sequential/hidden1/MatMulMatMul#sequential/input/Relu:activations:00sequential/hidden1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
)sequential/hidden1/BiasAdd/ReadVariableOpReadVariableOp2sequential_hidden1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
sequential/hidden1/BiasAddBiasAdd#sequential/hidden1/MatMul:product:01sequential/hidden1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<v
sequential/hidden1/ReluRelu#sequential/hidden1/BiasAdd:output:0*
T0*'
_output_shapes
:���������<�
(sequential/hidden2/MatMul/ReadVariableOpReadVariableOp1sequential_hidden2_matmul_readvariableop_resource*
_output_shapes

:<<*
dtype0�
sequential/hidden2/MatMulMatMul%sequential/hidden1/Relu:activations:00sequential/hidden2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<�
)sequential/hidden2/BiasAdd/ReadVariableOpReadVariableOp2sequential_hidden2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
sequential/hidden2/BiasAddBiasAdd#sequential/hidden2/MatMul:product:01sequential/hidden2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������<v
sequential/hidden2/ReluRelu#sequential/hidden2/BiasAdd:output:0*
T0*'
_output_shapes
:���������<�
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0�
sequential/output/MatMulMatMul%sequential/hidden2/Relu:activations:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
sequential/output/SigmoidSigmoid"sequential/output/BiasAdd:output:0*
T0*'
_output_shapes
:���������l
IdentityIdentitysequential/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^sequential/hidden1/BiasAdd/ReadVariableOp)^sequential/hidden1/MatMul/ReadVariableOp*^sequential/hidden2/BiasAdd/ReadVariableOp)^sequential/hidden2/MatMul/ReadVariableOp(^sequential/input/BiasAdd/ReadVariableOp'^sequential/input/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2V
)sequential/hidden1/BiasAdd/ReadVariableOp)sequential/hidden1/BiasAdd/ReadVariableOp2T
(sequential/hidden1/MatMul/ReadVariableOp(sequential/hidden1/MatMul/ReadVariableOp2V
)sequential/hidden2/BiasAdd/ReadVariableOp)sequential/hidden2/BiasAdd/ReadVariableOp2T
(sequential/hidden2/MatMul/ReadVariableOp(sequential/hidden2/MatMul/ReadVariableOp2R
'sequential/input/BiasAdd/ReadVariableOp'sequential/input/BiasAdd/ReadVariableOp2P
&sequential/input/MatMul/ReadVariableOp&sequential/input/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_input
�
�
%__inference_output_layer_call_fn_4881

inputs
unknown:<
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_4476o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�

�
?__inference_input_layer_call_and_return_conditional_losses_4832

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
)__inference_sequential_layer_call_fn_4748

inputs
unknown:
	unknown_0:
	unknown_1:<
	unknown_2:<
	unknown_3:<<
	unknown_4:<
	unknown_5:<
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_4483

inputs

input_4426:

input_4428:
hidden1_4443:<
hidden1_4445:<
hidden2_4460:<<
hidden2_4462:<
output_4477:<
output_4479:
identity��hidden1/StatefulPartitionedCall�hidden2/StatefulPartitionedCall�input/StatefulPartitionedCall�output/StatefulPartitionedCall�
input/StatefulPartitionedCallStatefulPartitionedCallinputs
input_4426
input_4428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_4425�
hidden1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0hidden1_4443hidden1_4445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden1_layer_call_and_return_conditional_losses_4442�
hidden2/StatefulPartitionedCallStatefulPartitionedCall(hidden1/StatefulPartitionedCall:output:0hidden2_4460hidden2_4462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_hidden2_layer_call_and_return_conditional_losses_4459�
output/StatefulPartitionedCallStatefulPartitionedCall(hidden2/StatefulPartitionedCall:output:0output_4477output_4479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_4476v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^hidden1/StatefulPartitionedCall ^hidden2/StatefulPartitionedCall^input/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
hidden1/StatefulPartitionedCallhidden1/StatefulPartitionedCall2B
hidden2/StatefulPartitionedCallhidden2/StatefulPartitionedCall2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
)__inference_sequential_layer_call_fn_4502
input_input
unknown:
	unknown_0:
	unknown_1:<
	unknown_2:<
	unknown_3:<<
	unknown_4:<
	unknown_5:<
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_input
�

�
@__inference_output_layer_call_and_return_conditional_losses_4892

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������<
 
_user_specified_nameinputs
�	
�
)__inference_sequential_layer_call_fn_4629
input_input
unknown:
	unknown_0:
	unknown_1:<
	unknown_2:<
	unknown_3:<<
	unknown_4:<
	unknown_5:<
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4589o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_input
�

�
?__inference_input_layer_call_and_return_conditional_losses_4425

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_input4
serving_default_input_input:0���������:
output0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
# _self_saveable_object_factories"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
#2_self_saveable_object_factories"
_tf_keras_layer
X
0
1
2
3
'4
(5
06
17"
trackable_list_wrapper
X
0
1
2
3
'4
(5
06
17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
8trace_0
9trace_1
:trace_2
;trace_32�
)__inference_sequential_layer_call_fn_4502
)__inference_sequential_layer_call_fn_4727
)__inference_sequential_layer_call_fn_4748
)__inference_sequential_layer_call_fn_4629�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z8trace_0z9trace_1z:trace_2z;trace_3
�
<trace_0
=trace_1
>trace_2
?trace_32�
D__inference_sequential_layer_call_and_return_conditional_losses_4780
D__inference_sequential_layer_call_and_return_conditional_losses_4812
D__inference_sequential_layer_call_and_return_conditional_losses_4653
D__inference_sequential_layer_call_and_return_conditional_losses_4677�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z<trace_0z=trace_1z>trace_2z?trace_3
�B�
__inference__wrapped_model_4407input_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_ratemmmnmomp'mq(mr0ms1mtvuvvvwvx'vy(vz0v{1v|"
	optimizer
,
Eserving_default"
signature_map
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ktrace_02�
$__inference_input_layer_call_fn_4821�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zKtrace_0
�
Ltrace_02�
?__inference_input_layer_call_and_return_conditional_losses_4832�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
:2input/kernel
:2
input/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Rtrace_02�
&__inference_hidden1_layer_call_fn_4841�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0
�
Strace_02�
A__inference_hidden1_layer_call_and_return_conditional_losses_4852�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0
 :<2hidden1/kernel
:<2hidden1/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
Ytrace_02�
&__inference_hidden2_layer_call_fn_4861�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zYtrace_0
�
Ztrace_02�
A__inference_hidden2_layer_call_and_return_conditional_losses_4872�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0
 :<<2hidden2/kernel
:<2hidden2/bias
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
`trace_02�
%__inference_output_layer_call_fn_4881�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0
�
atrace_02�
@__inference_output_layer_call_and_return_conditional_losses_4892�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zatrace_0
:<2output/kernel
:2output/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_sequential_layer_call_fn_4502input_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_sequential_layer_call_fn_4727inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_sequential_layer_call_fn_4748inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_sequential_layer_call_fn_4629input_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_4780inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_4812inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_4653input_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_4677input_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
"__inference_signature_wrapper_4706input_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
$__inference_input_layer_call_fn_4821inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_input_layer_call_and_return_conditional_losses_4832inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
&__inference_hidden1_layer_call_fn_4841inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_hidden1_layer_call_and_return_conditional_losses_4852inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
&__inference_hidden2_layer_call_fn_4861inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_hidden2_layer_call_and_return_conditional_losses_4872inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
%__inference_output_layer_call_fn_4881inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_output_layer_call_and_return_conditional_losses_4892inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
d	variables
e	keras_api
	ftotal
	gcount"
_tf_keras_metric
^
h	variables
i	keras_api
	jtotal
	kcount
l
_fn_kwargs"
_tf_keras_metric
.
f0
g1"
trackable_list_wrapper
-
d	variables"
_generic_user_object
:  (2total
:  (2count
.
j0
k1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
#:!2Adam/input/kernel/m
:2Adam/input/bias/m
%:#<2Adam/hidden1/kernel/m
:<2Adam/hidden1/bias/m
%:#<<2Adam/hidden2/kernel/m
:<2Adam/hidden2/bias/m
$:"<2Adam/output/kernel/m
:2Adam/output/bias/m
#:!2Adam/input/kernel/v
:2Adam/input/bias/v
%:#<2Adam/hidden1/kernel/v
:<2Adam/hidden1/bias/v
%:#<<2Adam/hidden2/kernel/v
:<2Adam/hidden2/bias/v
$:"<2Adam/output/kernel/v
:2Adam/output/bias/v�
__inference__wrapped_model_4407q'(014�1
*�'
%�"
input_input���������
� "/�,
*
output �
output����������
A__inference_hidden1_layer_call_and_return_conditional_losses_4852\/�,
%�"
 �
inputs���������
� "%�"
�
0���������<
� y
&__inference_hidden1_layer_call_fn_4841O/�,
%�"
 �
inputs���������
� "����������<�
A__inference_hidden2_layer_call_and_return_conditional_losses_4872\'(/�,
%�"
 �
inputs���������<
� "%�"
�
0���������<
� y
&__inference_hidden2_layer_call_fn_4861O'(/�,
%�"
 �
inputs���������<
� "����������<�
?__inference_input_layer_call_and_return_conditional_losses_4832\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� w
$__inference_input_layer_call_fn_4821O/�,
%�"
 �
inputs���������
� "�����������
@__inference_output_layer_call_and_return_conditional_losses_4892\01/�,
%�"
 �
inputs���������<
� "%�"
�
0���������
� x
%__inference_output_layer_call_fn_4881O01/�,
%�"
 �
inputs���������<
� "�����������
D__inference_sequential_layer_call_and_return_conditional_losses_4653o'(01<�9
2�/
%�"
input_input���������
p 

 
� "%�"
�
0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_4677o'(01<�9
2�/
%�"
input_input���������
p

 
� "%�"
�
0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_4780j'(017�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_4812j'(017�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
)__inference_sequential_layer_call_fn_4502b'(01<�9
2�/
%�"
input_input���������
p 

 
� "�����������
)__inference_sequential_layer_call_fn_4629b'(01<�9
2�/
%�"
input_input���������
p

 
� "�����������
)__inference_sequential_layer_call_fn_4727]'(017�4
-�*
 �
inputs���������
p 

 
� "�����������
)__inference_sequential_layer_call_fn_4748]'(017�4
-�*
 �
inputs���������
p

 
� "�����������
"__inference_signature_wrapper_4706�'(01C�@
� 
9�6
4
input_input%�"
input_input���������"/�,
*
output �
output���������