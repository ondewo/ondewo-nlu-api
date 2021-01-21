# ONDEWO API #

The present repository collects the interfaces across all ONDEWO products; each product is represented by a
folder and contains its interface definition.

The interfaces are given in Protobuffer format.
[Read for more information](https://developers.google.com/protocol-buffers)

## Index ##

* Repository Structure
* Supported Programming Languages
* Support

## Repository Structure ##
```
ondewo-nlu-api
│
├── googleapis
│   └── (submodule = https://github.com/googleapis/googleapis.git)
├── ondewo
│   └── nlu
│   |   ├── agent.proto
│   |   ├── aiservices.proto
│   |   ├── context.proto
│   |   ├── entity_type.proto
│   |   ├── intent.proto
│   |   ├── operation_metadata.proto
│   |   ├── project_role.proto
│   |   ├── session.proto
│   |   └── user.proto
│   └── qa
│       └── qa.proto
├── .git
├── .gitignore
├── .gitmodules
└── README.md
```

## Supported Programming Languages ##

| Product  |      Language      |  Version                                                           |
|----------|:-------------------|:-------------------------------------------------------------------|
| NLU      | Python             | [v2.1.0](https://bitbucket.org/ondewo/ondewo-nlu-client-python)    |

## Support ##

We encourage the issues to be reported through our [Customer Issue Tracker](https://bitbucket.org/ondewo/ondewo-customer-issue-tracking/issues).

If there is an urgent matter, do not hesitate to contact us: [info@ondewo.com](mailto:info@ondewo.com)

### Google APIs ###
path = googleapis

url = https://github.com/googleapis/googleapis.git

commit hash = 79ab27f3b70ebc221e265d2e8ab30a8cc2d21fa2
