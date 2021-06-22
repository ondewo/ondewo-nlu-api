# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/project_role.proto](#ondewo/nlu/project_role.proto)
    - [CreateProjectRoleRequest](#ondewo.nlu.CreateProjectRoleRequest)
    - [DeleteProjectRoleRequest](#ondewo.nlu.DeleteProjectRoleRequest)
    - [GetProjectRoleRequest](#ondewo.nlu.GetProjectRoleRequest)
    - [ListProjectRolesRequest](#ondewo.nlu.ListProjectRolesRequest)
    - [ListProjectRolesResponse](#ondewo.nlu.ListProjectRolesResponse)
    - [ProjectRole](#ondewo.nlu.ProjectRole)
    - [UpdateProjectRoleRequest](#ondewo.nlu.UpdateProjectRoleRequest)
  
    - [DefaultProjectRole](#ondewo.nlu.DefaultProjectRole)
    - [ProjectRoleView](#ondewo.nlu.ProjectRoleView)
  
    - [ProjectRoles](#ondewo.nlu.ProjectRoles)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/project_role.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/project_role.proto



<a name="ondewo.nlu.CreateProjectRoleRequest"></a>

### CreateProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | If the role_id is not provided, an incremental value will be assigned The &#34;name&#34; and &#34;role_type&#34; are mandatory values The permissions all default to False if not provided specifically |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the created project role, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.DeleteProjectRoleRequest"></a>

### DeleteProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role_id | [uint32](#uint32) |  | role is identified by role id, if empty will throw an error in the backend |






<a name="ondewo.nlu.GetProjectRoleRequest"></a>

### GetProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role_id | [uint32](#uint32) |  | role is identified by role id |
| role_name | [string](#string) |  | role can also be uniquely identified by its name |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the project role, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.ListProjectRolesRequest"></a>

### ListProjectRolesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the project roles, PROJECT_ROLE_VIEW_FULL by default |






<a name="ondewo.nlu.ListProjectRolesResponse"></a>

### ListProjectRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project_roles | [ProjectRole](#ondewo.nlu.ProjectRole) | repeated | The list of project roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ProjectRole"></a>

### ProjectRole
Project Role messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | unique identifier of the role |
| name | [string](#string) |  | unique name of the role |
| permissions | [string](#string) | repeated | defines the permissions for the given role (the strings can be gotten from the ListProjectPermissions) |






<a name="ondewo.nlu.UpdateProjectRoleRequest"></a>

### UpdateProjectRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| parent | [string](#string) |  |  |
| role | [ProjectRole](#ondewo.nlu.ProjectRole) |  | role_id in the Role message should be given, if empty will throw an error in the backend other fields in the Role are optional. Only the fields to be updated should be provided |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |
| project_role_view | [ProjectRoleView](#ondewo.nlu.ProjectRoleView) |  | Optional. specify the view of the updated project role, PROJECT_ROLE_VIEW_FULL by default |





 


<a name="ondewo.nlu.DefaultProjectRole"></a>

### DefaultProjectRole


| Name | Number | Description |
| ---- | ------ | ----------- |
| PROJECT_UNSPECIFIED | 0 | These roles have permissions valid only on a specific project

unspecified, default value depends on endpoint # TODO |
| PROJECT_USER | 1 | read-only access |
| PROJECT_EXECUTOR | 2 | permissions of PROJECT_USER &#43; execution rights (detect intent, extract entities, |
| PROJECT_DEVELOPER | 3 | permissions of PROJECT_EXECUTOR &#43; CRUD rights |
| PROJECT_ADMIN | 4 | this role can do everything. The creator of a project is set |
| PROJECT_INACTIVE | 5 | This role can do nothing. |



<a name="ondewo.nlu.ProjectRoleView"></a>

### ProjectRoleView


| Name | Number | Description |
| ---- | ------ | ----------- |
| PROJECT_ROLE_VIEW_UNSPECIFIED | 0 | The view depends on the endpoint: * CreateProjectRole: FULL * GetProjectRole: FULL * UpdateProjectRole: FULL * ListProjectRoles: FULL |
| PROJECT_ROLE_VIEW_SHALLOW | 1 | only role ID and name fields are populated |
| PROJECT_ROLE_VIEW_FULL | 2 | all fields including permissions are populated |


 

 


<a name="ondewo.nlu.ProjectRoles"></a>

### ProjectRoles


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateProjectRole | [CreateProjectRoleRequest](#ondewo.nlu.CreateProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) |  |
| GetProjectRole | [GetProjectRoleRequest](#ondewo.nlu.GetProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) |  |
| DeleteProjectRole | [DeleteProjectRoleRequest](#ondewo.nlu.DeleteProjectRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| UpdateProjectRole | [UpdateProjectRoleRequest](#ondewo.nlu.UpdateProjectRoleRequest) | [ProjectRole](#ondewo.nlu.ProjectRole) |  |
| ListProjectRoles | [ListProjectRolesRequest](#ondewo.nlu.ListProjectRolesRequest) | [ListProjectRolesResponse](#ondewo.nlu.ListProjectRolesResponse) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

