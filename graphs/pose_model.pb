node {
  name: "Adam/iterations/Initializer/initial_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT64
        tensor_shape {
        }
        int64_val: 0
      }
    }
  }
}
node {
  name: "Adam/iterations"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Adam/iterations"
    }
  }
}
node {
  name: "Adam/iterations/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Adam/iterations"
}
node {
  name: "Adam/iterations/Assign"
  op: "AssignVariableOp"
  input: "Adam/iterations"
  input: "Adam/iterations/Initializer/initial_value"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/iterations"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Adam/iterations/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/iterations"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/iterations"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Adam/lr/Initializer/initial_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0010000000474974513
      }
    }
  }
}
node {
  name: "Adam/lr"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Adam/lr"
    }
  }
}
node {
  name: "Adam/lr/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Adam/lr"
}
node {
  name: "Adam/lr/Assign"
  op: "AssignVariableOp"
  input: "Adam/lr"
  input: "Adam/lr/Initializer/initial_value"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/lr"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/lr/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/lr"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/lr"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/beta_1/Initializer/initial_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam/beta_1"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Adam/beta_1"
    }
  }
}
node {
  name: "Adam/beta_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Adam/beta_1"
}
node {
  name: "Adam/beta_1/Assign"
  op: "AssignVariableOp"
  input: "Adam/beta_1"
  input: "Adam/beta_1/Initializer/initial_value"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/beta_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/beta_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/beta_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/beta_2/Initializer/initial_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam/beta_2"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Adam/beta_2"
    }
  }
}
node {
  name: "Adam/beta_2/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Adam/beta_2"
}
node {
  name: "Adam/beta_2/Assign"
  op: "AssignVariableOp"
  input: "Adam/beta_2"
  input: "Adam/beta_2/Initializer/initial_value"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/beta_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/beta_2/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/beta_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/decay/Initializer/initial_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Adam/decay"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "Adam/decay"
    }
  }
}
node {
  name: "Adam/decay/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Adam/decay"
}
node {
  name: "Adam/decay/Assign"
  op: "AssignVariableOp"
  input: "Adam/decay"
  input: "Adam/decay/Initializer/initial_value"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/decay"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Adam/decay/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/decay"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Adam/decay"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sequential_1_input"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 12
        }
      }
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\014\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.20701967179775238
      }
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.20701967179775238
      }
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "dense/kernel/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "dense/kernel/Initializer/random_uniform/max"
  input: "dense/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "dense/kernel/Initializer/random_uniform/RandomUniform"
  input: "dense/kernel/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
}
node {
  name: "dense/kernel/Initializer/random_uniform"
  op: "Add"
  input: "dense/kernel/Initializer/random_uniform/mul"
  input: "dense/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
}
node {
  name: "dense/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 12
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "dense/kernel/Assign"
  op: "Assign"
  input: "dense/kernel"
  input: "dense/kernel/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "dense/kernel/read"
  op: "Identity"
  input: "dense/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
}
node {
  name: "dense/bias/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "dense/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "dense/bias/Assign"
  op: "Assign"
  input: "dense/bias"
  input: "dense/bias/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "dense/bias/read"
  op: "Identity"
  input: "dense/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/bias"
      }
    }
  }
}
node {
  name: "dense/MatMul"
  op: "MatMul"
  input: "sequential_1_input"
  input: "dense/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "dense/BiasAdd"
  op: "BiasAdd"
  input: "dense/MatMul"
  input: "dense/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "dense/Relu"
  op: "Relu"
  input: "dense/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\200\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.21401290595531464
      }
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.21401290595531464
      }
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "dense_1/kernel/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "dense_1/kernel/Initializer/random_uniform/max"
  input: "dense_1/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "dense_1/kernel/Initializer/random_uniform/RandomUniform"
  input: "dense_1/kernel/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
}
node {
  name: "dense_1/kernel/Initializer/random_uniform"
  op: "Add"
  input: "dense_1/kernel/Initializer/random_uniform/mul"
  input: "dense_1/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
}
node {
  name: "dense_1/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "dense_1/kernel/Assign"
  op: "Assign"
  input: "dense_1/kernel"
  input: "dense_1/kernel/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "dense_1/kernel/read"
  op: "Identity"
  input: "dense_1/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
}
node {
  name: "dense_1/bias/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "dense_1/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "dense_1/bias/Assign"
  op: "Assign"
  input: "dense_1/bias"
  input: "dense_1/bias/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "dense_1/bias/read"
  op: "Identity"
  input: "dense_1/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/bias"
      }
    }
  }
}
node {
  name: "dense_1/MatMul"
  op: "MatMul"
  input: "dense/Relu"
  input: "dense_1/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "dense_1/BiasAdd"
  op: "BiasAdd"
  input: "dense_1/MatMul"
  input: "dense_1/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "dense_1/Softmax"
  op: "Softmax"
  input: "dense_1/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "dense_2_target"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: -1
        }
      }
    }
  }
}
node {
  name: "dense_2_sample_weights/input"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "dense_2_sample_weights"
  op: "PlaceholderWithDefault"
  input: "dense_2_sample_weights/input"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0000000116860974e-07
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/sub/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/sub"
  op: "Sub"
  input: "loss/dense_2_loss/sub/x"
  input: "loss/dense_2_loss/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/clip_by_value"
  op: "ClipByValue"
  input: "dense_1/Softmax"
  input: "loss/dense_2_loss/Const"
  input: "loss/dense_2_loss/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/Log"
  op: "Log"
  input: "loss/dense_2_loss/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/Reshape"
  op: "Reshape"
  input: "dense_2_target"
  input: "loss/dense_2_loss/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "loss/dense_2_loss/Cast"
  op: "Cast"
  input: "loss/dense_2_loss/Reshape"
  attr {
    key: "DstT"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\003\000\000\000"
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/Reshape_1"
  op: "Reshape"
  input: "loss/dense_2_loss/Log"
  input: "loss/dense_2_loss/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/Shape"
  op: "Shape"
  input: "loss/dense_2_loss/Cast"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
  op: "SparseSoftmaxCrossEntropyWithLogits"
  input: "loss/dense_2_loss/Reshape_1"
  input: "loss/dense_2_loss/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tlabels"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "loss/dense_2_loss/Mean/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/Mean"
  op: "Mean"
  input: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
  input: "loss/dense_2_loss/Mean/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/dense_2_loss/mul"
  op: "Mul"
  input: "loss/dense_2_loss/Mean"
  input: "dense_2_sample_weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/NotEqual/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/NotEqual"
  op: "NotEqual"
  input: "dense_2_sample_weights"
  input: "loss/dense_2_loss/NotEqual/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/Cast_1"
  op: "Cast"
  input: "loss/dense_2_loss/NotEqual"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "loss/dense_2_loss/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/Mean_1"
  op: "Mean"
  input: "loss/dense_2_loss/Cast_1"
  input: "loss/dense_2_loss/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/dense_2_loss/truediv"
  op: "RealDiv"
  input: "loss/dense_2_loss/mul"
  input: "loss/dense_2_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/dense_2_loss/Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "loss/dense_2_loss/Mean_2"
  op: "Mean"
  input: "loss/dense_2_loss/truediv"
  input: "loss/dense_2_loss/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/mul/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "loss/mul"
  op: "Mul"
  input: "loss/mul/x"
  input: "loss/dense_2_loss/Mean_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "metrics/acc/Max/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "metrics/acc/Max"
  op: "Max"
  input: "dense_2_target"
  input: "metrics/acc/Max/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "metrics/acc/ArgMax/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "metrics/acc/ArgMax"
  op: "ArgMax"
  input: "dense_1/Softmax"
  input: "metrics/acc/ArgMax/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "metrics/acc/Cast"
  op: "Cast"
  input: "metrics/acc/ArgMax"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "metrics/acc/Equal"
  op: "Equal"
  input: "metrics/acc/Max"
  input: "metrics/acc/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "metrics/acc/Cast_1"
  op: "Cast"
  input: "metrics/acc/Equal"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "metrics/acc/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "metrics/acc/Mean"
  op: "Mean"
  input: "metrics/acc/Cast_1"
  input: "metrics/acc/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/Shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/mul"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/Adam/gradients/grad_ys_0"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/mul"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/Fill"
  op: "Fill"
  input: "training/Adam/gradients/Shape"
  input: "training/Adam/gradients/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/mul"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/mul_grad/Mul"
  op: "Mul"
  input: "training/Adam/gradients/Fill"
  input: "loss/dense_2_loss/Mean_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/mul_grad/Mul_1"
  op: "Mul"
  input: "training/Adam/gradients/Fill"
  input: "loss/mul/x"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/loss/mul_grad/Mul_1"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape"
  op: "Shape"
  input: "loss/dense_2_loss/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile"
  op: "Tile"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1"
  op: "Shape"
  input: "loss/dense_2_loss/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod"
  op: "Prod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1"
  op: "Prod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum"
  op: "Maximum"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv"
  op: "FloorDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast"
  op: "Cast"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truediv"
  op: "RealDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean_2"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape"
  op: "Shape"
  input: "loss/dense_2_loss/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv"
  op: "RealDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truediv"
  input: "loss/dense_2_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Neg"
  op: "Neg"
  input: "loss/dense_2_loss/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Neg"
  input: "loss/dense_2_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1"
  input: "loss/dense_2_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/mul"
  op: "Mul"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truediv"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/mul"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/truediv"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape"
  op: "Shape"
  input: "loss/dense_2_loss/Mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1"
  op: "Shape"
  input: "dense_2_sample_weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul"
  op: "Mul"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape"
  input: "dense_2_sample_weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1"
  op: "Mul"
  input: "loss/dense_2_loss/Mean"
  input: "training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/mul"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape"
  op: "Shape"
  input: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/add"
  op: "Add"
  input: "loss/dense_2_loss/Mean/reduction_indices"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod"
  op: "FloorMod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/add"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/range"
  op: "Range"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill"
  op: "Fill"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/range"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum"
  op: "Maximum"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv"
  op: "FloorDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile"
  op: "Tile"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2"
  op: "Shape"
  input: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3"
  op: "Shape"
  input: "loss/dense_2_loss/Mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod"
  op: "Prod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1"
  op: "Prod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1"
  op: "Maximum"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1"
  op: "FloorDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast"
  op: "Cast"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv"
  op: "RealDiv"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Mean"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/zeros_like"
  op: "ZerosLike"
  input: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient"
  op: "PreventGradient"
  input: "loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
      }
    }
  }
  attr {
    key: "message"
    value {
      s: "Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation\'s interaction with tf.gradients()"
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims"
  op: "ExpandDims"
  input: "training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv"
  input: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul"
  op: "Mul"
  input: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims"
  input: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Shape"
  op: "Shape"
  input: "loss/dense_2_loss/Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Reshape_1"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul"
  input: "training/Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Reshape_1"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal"
  op: "Reciprocal"
  input: "loss/dense_2_loss/clip_by_value"
  input: "^training/Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Log"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/Log_grad/mul"
  op: "Mul"
  input: "training/Adam/gradients/loss/dense_2_loss/Reshape_1_grad/Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/Log"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape"
  op: "Shape"
  input: "dense_1/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_3"
  op: "Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/Log_grad/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros"
  op: "Fill"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_3"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Less"
  op: "Less"
  input: "dense_1/Softmax"
  input: "loss/dense_2_loss/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Greater"
  op: "Greater"
  input: "dense_1/Softmax"
  input: "loss/dense_2_loss/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1"
  op: "BroadcastGradientArgs"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/LogicalOr"
  op: "LogicalOr"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Less"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Greater"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select"
  op: "Select"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/LogicalOr"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros"
  input: "training/Adam/gradients/loss/dense_2_loss/Log_grad/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1"
  op: "Select"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Less"
  input: "training/Adam/gradients/loss/dense_2_loss/Log_grad/mul"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_2"
  op: "Select"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Greater"
  input: "training/Adam/gradients/loss/dense_2_loss/Log_grad/mul"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_2"
  op: "Sum"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_2"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_2"
  op: "Reshape"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_2"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@loss/dense_2_loss/clip_by_value"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/mul"
  op: "Mul"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape"
  input: "dense_1/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/Sum"
  op: "Sum"
  input: "training/Adam/gradients/dense_1/Softmax_grad/mul"
  input: "training/Adam/gradients/dense_1/Softmax_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/Reshape"
  op: "Reshape"
  input: "training/Adam/gradients/dense_1/Softmax_grad/Sum"
  input: "training/Adam/gradients/dense_1/Softmax_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/sub"
  op: "Sub"
  input: "training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape"
  input: "training/Adam/gradients/dense_1/Softmax_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/Softmax_grad/mul_1"
  op: "Mul"
  input: "training/Adam/gradients/dense_1/Softmax_grad/sub"
  input: "dense_1/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/Softmax"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/Adam/gradients/dense_1/Softmax_grad/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/BiasAdd"
      }
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/MatMul_grad/MatMul"
  op: "MatMul"
  input: "training/Adam/gradients/dense_1/Softmax_grad/mul_1"
  input: "dense_1/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/MatMul"
      }
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "training/Adam/gradients/dense_1/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "dense/Relu"
  input: "training/Adam/gradients/dense_1/Softmax_grad/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/MatMul"
      }
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/gradients/dense/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/Adam/gradients/dense_1/MatMul_grad/MatMul"
  input: "dense/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/Relu"
      }
    }
  }
}
node {
  name: "training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/Adam/gradients/dense/Relu_grad/ReluGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/BiasAdd"
      }
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "training/Adam/gradients/dense/MatMul_grad/MatMul"
  op: "MatMul"
  input: "training/Adam/gradients/dense/Relu_grad/ReluGrad"
  input: "dense/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/MatMul"
      }
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "training/Adam/gradients/dense/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "sequential_1_input"
  input: "training/Adam/gradients/dense/Relu_grad/ReluGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/MatMul"
      }
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "training/Adam/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT64
        tensor_shape {
        }
        int64_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/AssignAddVariableOp"
  op: "AssignAddVariableOp"
  input: "Adam/iterations"
  input: "training/Adam/Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/iterations"
  input: "^training/Adam/AssignAddVariableOp"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/Adam/Cast/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/iterations"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/Adam/Cast"
  op: "Cast"
  input: "training/Adam/Cast/ReadVariableOp"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/Adam/add/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/add"
  op: "Add"
  input: "training/Adam/Cast"
  input: "training/Adam/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Pow/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Pow"
  op: "Pow"
  input: "training/Adam/Pow/ReadVariableOp"
  input: "training/Adam/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub"
  op: "Sub"
  input: "training/Adam/sub/x"
  input: "training/Adam/Pow"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: inf
      }
    }
  }
}
node {
  name: "training/Adam/clip_by_value"
  op: "ClipByValue"
  input: "training/Adam/sub"
  input: "training/Adam/Const_1"
  input: "training/Adam/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Sqrt"
  op: "Sqrt"
  input: "training/Adam/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Pow_1/ReadVariableOp"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Pow_1"
  op: "Pow"
  input: "training/Adam/Pow_1/ReadVariableOp"
  input: "training/Adam/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_1/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_1"
  op: "Sub"
  input: "training/Adam/sub_1/x"
  input: "training/Adam/Pow_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/truediv"
  op: "RealDiv"
  input: "training/Adam/Sqrt"
  input: "training/Adam/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_1"
  op: "ReadVariableOp"
  input: "Adam/lr"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_1"
  input: "training/Adam/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\014\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "training/Adam/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/zeros"
  op: "Fill"
  input: "training/Adam/zeros/shape_as_tensor"
  input: "training/Adam/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/Variable"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 12
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable"
    }
  }
}
node {
  name: "training/Adam/Variable/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable"
}
node {
  name: "training/Adam/Variable/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable"
  input: "training/Adam/zeros"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Variable_1"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_1"
    }
  }
}
node {
  name: "training/Adam/Variable_1/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_1"
}
node {
  name: "training/Adam/Variable_1/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_1"
  input: "training/Adam/zeros_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_1/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
          dim {
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Variable_2"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_2"
    }
  }
}
node {
  name: "training/Adam/Variable_2/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_2"
}
node {
  name: "training/Adam/Variable_2/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_2"
  input: "training/Adam/zeros_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_2/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_2"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Variable_3"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_3"
    }
  }
}
node {
  name: "training/Adam/Variable_3/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_3"
}
node {
  name: "training/Adam/Variable_3/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_3"
  input: "training/Adam/zeros_3"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_3"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_3/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_3"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_3"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_4/shape_as_tensor"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\014\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "training/Adam/zeros_4/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/zeros_4"
  op: "Fill"
  input: "training/Adam/zeros_4/shape_as_tensor"
  input: "training/Adam/zeros_4/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/Variable_4"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 12
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_4"
    }
  }
}
node {
  name: "training/Adam/Variable_4/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_4"
}
node {
  name: "training/Adam/Variable_4/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_4"
  input: "training/Adam/zeros_4"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_4/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_4"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_4"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Variable_5"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_5"
    }
  }
}
node {
  name: "training/Adam/Variable_5/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_5"
}
node {
  name: "training/Adam/Variable_5/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_5"
  input: "training/Adam/zeros_5"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_5"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_5/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_5"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_5"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
          dim {
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Variable_6"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_6"
    }
  }
}
node {
  name: "training/Adam/Variable_6/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_6"
}
node {
  name: "training/Adam/Variable_6/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_6"
  input: "training/Adam/zeros_6"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_6"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_6/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_6"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_6"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Variable_7"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_7"
    }
  }
}
node {
  name: "training/Adam/Variable_7/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_7"
}
node {
  name: "training/Adam/Variable_7/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_7"
  input: "training/Adam/zeros_7"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_7"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_7/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_7"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_7"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_8/shape_as_tensor"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/zeros_8/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/zeros_8"
  op: "Fill"
  input: "training/Adam/zeros_8/shape_as_tensor"
  input: "training/Adam/zeros_8/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/Variable_8"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_8"
    }
  }
}
node {
  name: "training/Adam/Variable_8/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_8"
}
node {
  name: "training/Adam/Variable_8/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_8"
  input: "training/Adam/zeros_8"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_8"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_8/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_8"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_8"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_9/shape_as_tensor"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/zeros_9/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/zeros_9"
  op: "Fill"
  input: "training/Adam/zeros_9/shape_as_tensor"
  input: "training/Adam/zeros_9/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/Variable_9"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_9"
    }
  }
}
node {
  name: "training/Adam/Variable_9/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_9"
}
node {
  name: "training/Adam/Variable_9/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_9"
  input: "training/Adam/zeros_9"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_9"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_9/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_9"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_9"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_10/shape_as_tensor"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/zeros_10/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/zeros_10"
  op: "Fill"
  input: "training/Adam/zeros_10/shape_as_tensor"
  input: "training/Adam/zeros_10/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/Variable_10"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_10"
    }
  }
}
node {
  name: "training/Adam/Variable_10/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_10"
}
node {
  name: "training/Adam/Variable_10/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_10"
  input: "training/Adam/zeros_10"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_10/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_10"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_10"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/zeros_11/shape_as_tensor"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/Adam/zeros_11/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/zeros_11"
  op: "Fill"
  input: "training/Adam/zeros_11/shape_as_tensor"
  input: "training/Adam/zeros_11/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/Adam/Variable_11"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "training/Adam/Variable_11"
    }
  }
}
node {
  name: "training/Adam/Variable_11/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_11"
}
node {
  name: "training/Adam/Variable_11/Assign"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_11"
  input: "training/Adam/zeros_11"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_11"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Variable_11/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_11"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/Adam/Variable_11"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_2"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_1/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_1"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_2"
  input: "training/Adam/mul_1/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_3"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_2/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_2"
  op: "Sub"
  input: "training/Adam/sub_2/x"
  input: "training/Adam/ReadVariableOp_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_2"
  op: "Mul"
  input: "training/Adam/sub_2"
  input: "training/Adam/gradients/dense/MatMul_grad/MatMul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_1"
  op: "Add"
  input: "training/Adam/mul_1"
  input: "training/Adam/mul_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_4"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_3/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_4"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_3"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_4"
  input: "training/Adam/mul_3/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_5"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_3/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_3"
  op: "Sub"
  input: "training/Adam/sub_3/x"
  input: "training/Adam/ReadVariableOp_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Square"
  op: "Square"
  input: "training/Adam/gradients/dense/MatMul_grad/MatMul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_4"
  op: "Mul"
  input: "training/Adam/sub_3"
  input: "training/Adam/Square"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_2"
  op: "Add"
  input: "training/Adam/mul_3"
  input: "training/Adam/mul_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_5"
  op: "Mul"
  input: "training/Adam/mul"
  input: "training/Adam/add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Const_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Const_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: inf
      }
    }
  }
}
node {
  name: "training/Adam/clip_by_value_1"
  op: "ClipByValue"
  input: "training/Adam/add_2"
  input: "training/Adam/Const_3"
  input: "training/Adam/Const_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Sqrt_1"
  op: "Sqrt"
  input: "training/Adam/clip_by_value_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_3/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0000000116860974e-07
      }
    }
  }
}
node {
  name: "training/Adam/add_3"
  op: "Add"
  input: "training/Adam/Sqrt_1"
  input: "training/Adam/add_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/truediv_1"
  op: "RealDiv"
  input: "training/Adam/mul_5"
  input: "training/Adam/add_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_4"
  op: "Sub"
  input: "dense/kernel/read"
  input: "training/Adam/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp"
  op: "AssignVariableOp"
  input: "training/Adam/Variable"
  input: "training/Adam/add_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_6"
  op: "ReadVariableOp"
  input: "training/Adam/Variable"
  input: "^training/Adam/AssignVariableOp"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_1"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_4"
  input: "training/Adam/add_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_7"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_4"
  input: "^training/Adam/AssignVariableOp_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Assign"
  op: "Assign"
  input: "dense/kernel"
  input: "training/Adam/sub_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_8"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_6/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_6"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_8"
  input: "training/Adam/mul_6/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_9"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_5/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_5"
  op: "Sub"
  input: "training/Adam/sub_5/x"
  input: "training/Adam/ReadVariableOp_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_7"
  op: "Mul"
  input: "training/Adam/sub_5"
  input: "training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_4"
  op: "Add"
  input: "training/Adam/mul_6"
  input: "training/Adam/mul_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_10"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_8/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_5"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_8"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_10"
  input: "training/Adam/mul_8/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_11"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_6/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_6"
  op: "Sub"
  input: "training/Adam/sub_6/x"
  input: "training/Adam/ReadVariableOp_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Square_1"
  op: "Square"
  input: "training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_9"
  op: "Mul"
  input: "training/Adam/sub_6"
  input: "training/Adam/Square_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_5"
  op: "Add"
  input: "training/Adam/mul_8"
  input: "training/Adam/mul_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_10"
  op: "Mul"
  input: "training/Adam/mul"
  input: "training/Adam/add_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Const_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Const_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: inf
      }
    }
  }
}
node {
  name: "training/Adam/clip_by_value_2"
  op: "ClipByValue"
  input: "training/Adam/add_5"
  input: "training/Adam/Const_5"
  input: "training/Adam/Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Sqrt_2"
  op: "Sqrt"
  input: "training/Adam/clip_by_value_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_6/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0000000116860974e-07
      }
    }
  }
}
node {
  name: "training/Adam/add_6"
  op: "Add"
  input: "training/Adam/Sqrt_2"
  input: "training/Adam/add_6/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/truediv_2"
  op: "RealDiv"
  input: "training/Adam/mul_10"
  input: "training/Adam/add_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_7"
  op: "Sub"
  input: "dense/bias/read"
  input: "training/Adam/truediv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_2"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_1"
  input: "training/Adam/add_4"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_12"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_1"
  input: "^training/Adam/AssignVariableOp_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_3"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_5"
  input: "training/Adam/add_5"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_13"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_5"
  input: "^training/Adam/AssignVariableOp_3"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Assign_1"
  op: "Assign"
  input: "dense/bias"
  input: "training/Adam/sub_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_14"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_11/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_11"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_14"
  input: "training/Adam/mul_11/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_15"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_8/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_8"
  op: "Sub"
  input: "training/Adam/sub_8/x"
  input: "training/Adam/ReadVariableOp_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_12"
  op: "Mul"
  input: "training/Adam/sub_8"
  input: "training/Adam/gradients/dense_1/MatMul_grad/MatMul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_7"
  op: "Add"
  input: "training/Adam/mul_11"
  input: "training/Adam/mul_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_16"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_13/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_6"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_13"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_16"
  input: "training/Adam/mul_13/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_17"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_9/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_9"
  op: "Sub"
  input: "training/Adam/sub_9/x"
  input: "training/Adam/ReadVariableOp_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Square_2"
  op: "Square"
  input: "training/Adam/gradients/dense_1/MatMul_grad/MatMul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_14"
  op: "Mul"
  input: "training/Adam/sub_9"
  input: "training/Adam/Square_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_8"
  op: "Add"
  input: "training/Adam/mul_13"
  input: "training/Adam/mul_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_15"
  op: "Mul"
  input: "training/Adam/mul"
  input: "training/Adam/add_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Const_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Const_8"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: inf
      }
    }
  }
}
node {
  name: "training/Adam/clip_by_value_3"
  op: "ClipByValue"
  input: "training/Adam/add_8"
  input: "training/Adam/Const_7"
  input: "training/Adam/Const_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Sqrt_3"
  op: "Sqrt"
  input: "training/Adam/clip_by_value_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_9/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0000000116860974e-07
      }
    }
  }
}
node {
  name: "training/Adam/add_9"
  op: "Add"
  input: "training/Adam/Sqrt_3"
  input: "training/Adam/add_9/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/truediv_3"
  op: "RealDiv"
  input: "training/Adam/mul_15"
  input: "training/Adam/add_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_10"
  op: "Sub"
  input: "dense_1/kernel/read"
  input: "training/Adam/truediv_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_4"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_2"
  input: "training/Adam/add_7"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_18"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_2"
  input: "^training/Adam/AssignVariableOp_4"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_5"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_6"
  input: "training/Adam/add_8"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_19"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_6"
  input: "^training/Adam/AssignVariableOp_5"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Assign_2"
  op: "Assign"
  input: "dense_1/kernel"
  input: "training/Adam/sub_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_20"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_16/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_3"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_16"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_20"
  input: "training/Adam/mul_16/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_21"
  op: "ReadVariableOp"
  input: "Adam/beta_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_11/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_11"
  op: "Sub"
  input: "training/Adam/sub_11/x"
  input: "training/Adam/ReadVariableOp_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_17"
  op: "Mul"
  input: "training/Adam/sub_11"
  input: "training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_10"
  op: "Add"
  input: "training/Adam/mul_16"
  input: "training/Adam/mul_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_22"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_18/ReadVariableOp"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_7"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_18"
  op: "Mul"
  input: "training/Adam/ReadVariableOp_22"
  input: "training/Adam/mul_18/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_23"
  op: "ReadVariableOp"
  input: "Adam/beta_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_12/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/Adam/sub_12"
  op: "Sub"
  input: "training/Adam/sub_12/x"
  input: "training/Adam/ReadVariableOp_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Square_3"
  op: "Square"
  input: "training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_19"
  op: "Mul"
  input: "training/Adam/sub_12"
  input: "training/Adam/Square_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_11"
  op: "Add"
  input: "training/Adam/mul_18"
  input: "training/Adam/mul_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/mul_20"
  op: "Mul"
  input: "training/Adam/mul"
  input: "training/Adam/add_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Const_9"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/Adam/Const_10"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: inf
      }
    }
  }
}
node {
  name: "training/Adam/clip_by_value_4"
  op: "ClipByValue"
  input: "training/Adam/add_11"
  input: "training/Adam/Const_9"
  input: "training/Adam/Const_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Sqrt_4"
  op: "Sqrt"
  input: "training/Adam/clip_by_value_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/add_12/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0000000116860974e-07
      }
    }
  }
}
node {
  name: "training/Adam/add_12"
  op: "Add"
  input: "training/Adam/Sqrt_4"
  input: "training/Adam/add_12/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/truediv_4"
  op: "RealDiv"
  input: "training/Adam/mul_20"
  input: "training/Adam/add_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/sub_13"
  op: "Sub"
  input: "dense_1/bias/read"
  input: "training/Adam/truediv_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_6"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_3"
  input: "training/Adam/add_10"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_24"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_3"
  input: "^training/Adam/AssignVariableOp_6"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/AssignVariableOp_7"
  op: "AssignVariableOp"
  input: "training/Adam/Variable_7"
  input: "training/Adam/add_11"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/ReadVariableOp_25"
  op: "ReadVariableOp"
  input: "training/Adam/Variable_7"
  input: "^training/Adam/AssignVariableOp_7"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/Adam/Assign_3"
  op: "Assign"
  input: "dense_1/bias"
  input: "training/Adam/sub_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/group_deps"
  op: "NoOp"
  input: "^loss/mul"
  input: "^metrics/acc/Mean"
  input: "^training/Adam/Assign"
  input: "^training/Adam/Assign_1"
  input: "^training/Adam/Assign_2"
  input: "^training/Adam/Assign_3"
  input: "^training/Adam/ReadVariableOp"
  input: "^training/Adam/ReadVariableOp_12"
  input: "^training/Adam/ReadVariableOp_13"
  input: "^training/Adam/ReadVariableOp_18"
  input: "^training/Adam/ReadVariableOp_19"
  input: "^training/Adam/ReadVariableOp_24"
  input: "^training/Adam/ReadVariableOp_25"
  input: "^training/Adam/ReadVariableOp_6"
  input: "^training/Adam/ReadVariableOp_7"
}
node {
  name: "VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "Adam/iterations"
}
node {
  name: "VarIsInitializedOp_1"
  op: "VarIsInitializedOp"
  input: "Adam/lr"
}
node {
  name: "VarIsInitializedOp_2"
  op: "VarIsInitializedOp"
  input: "Adam/beta_1"
}
node {
  name: "VarIsInitializedOp_3"
  op: "VarIsInitializedOp"
  input: "Adam/beta_2"
}
node {
  name: "VarIsInitializedOp_4"
  op: "VarIsInitializedOp"
  input: "Adam/decay"
}
node {
  name: "IsVariableInitialized"
  op: "IsVariableInitialized"
  input: "dense/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_1"
  op: "IsVariableInitialized"
  input: "dense/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_2"
  op: "IsVariableInitialized"
  input: "dense_1/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_3"
  op: "IsVariableInitialized"
  input: "dense_1/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@dense_1/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "VarIsInitializedOp_5"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable"
}
node {
  name: "VarIsInitializedOp_6"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_1"
}
node {
  name: "VarIsInitializedOp_7"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_2"
}
node {
  name: "VarIsInitializedOp_8"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_3"
}
node {
  name: "VarIsInitializedOp_9"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_4"
}
node {
  name: "VarIsInitializedOp_10"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_5"
}
node {
  name: "VarIsInitializedOp_11"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_6"
}
node {
  name: "VarIsInitializedOp_12"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_7"
}
node {
  name: "VarIsInitializedOp_13"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_8"
}
node {
  name: "VarIsInitializedOp_14"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_9"
}
node {
  name: "VarIsInitializedOp_15"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_10"
}
node {
  name: "VarIsInitializedOp_16"
  op: "VarIsInitializedOp"
  input: "training/Adam/Variable_11"
}
node {
  name: "init"
  op: "NoOp"
  input: "^Adam/beta_1/Assign"
  input: "^Adam/beta_2/Assign"
  input: "^Adam/decay/Assign"
  input: "^Adam/iterations/Assign"
  input: "^Adam/lr/Assign"
  input: "^dense/bias/Assign"
  input: "^dense/kernel/Assign"
  input: "^dense_1/bias/Assign"
  input: "^dense_1/kernel/Assign"
  input: "^training/Adam/Variable/Assign"
  input: "^training/Adam/Variable_1/Assign"
  input: "^training/Adam/Variable_10/Assign"
  input: "^training/Adam/Variable_11/Assign"
  input: "^training/Adam/Variable_2/Assign"
  input: "^training/Adam/Variable_3/Assign"
  input: "^training/Adam/Variable_4/Assign"
  input: "^training/Adam/Variable_5/Assign"
  input: "^training/Adam/Variable_6/Assign"
  input: "^training/Adam/Variable_7/Assign"
  input: "^training/Adam/Variable_8/Assign"
  input: "^training/Adam/Variable_9/Assign"
}
versions {
  producer: 26
}
