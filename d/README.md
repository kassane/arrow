<!---
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
-->

# Apache Arrow

An implementation of Arrow targeting D programming language.

See our current [feature matrix](https://github.com/apache/arrow/blob/main/docs/source/status.rst)
for currently available features.

# Requirements

- [dmd/gdc/ldc2](https://dlang.org/download) with druntime-frontend 2.105.0 or later

# Building

- build Arrow library (C++)
- build C glib bindings
- build D bindings

```bash
$ git clone https://github.com/apache/arrow.git
$ cd arrow/d
$ dub build -b release
```