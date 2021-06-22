# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [ondewo/nlu/user.proto](#ondewo/nlu/user.proto)
    - [CreateServerRoleRequest](#ondewo.nlu.CreateServerRoleRequest)
    - [CreateUserRequest](#ondewo.nlu.CreateUserRequest)
    - [DeleteServerRoleRequest](#ondewo.nlu.DeleteServerRoleRequest)
    - [DeleteUserRequest](#ondewo.nlu.DeleteUserRequest)
    - [GetServerRoleRequest](#ondewo.nlu.GetServerRoleRequest)
    - [GetUserRequest](#ondewo.nlu.GetUserRequest)
    - [ListServerPermissionsRequest](#ondewo.nlu.ListServerPermissionsRequest)
    - [ListServerPermissionsResponse](#ondewo.nlu.ListServerPermissionsResponse)
    - [ListServerRolesRequest](#ondewo.nlu.ListServerRolesRequest)
    - [ListServerRolesResponse](#ondewo.nlu.ListServerRolesResponse)
    - [ListUserInfosResponse](#ondewo.nlu.ListUserInfosResponse)
    - [ListUsersRequest](#ondewo.nlu.ListUsersRequest)
    - [ListUsersResponse](#ondewo.nlu.ListUsersResponse)
    - [LoginRequest](#ondewo.nlu.LoginRequest)
    - [LoginResponse](#ondewo.nlu.LoginResponse)
    - [ServerRole](#ondewo.nlu.ServerRole)
    - [UpdateServerRoleRequest](#ondewo.nlu.UpdateServerRoleRequest)
    - [UpdateUserRequest](#ondewo.nlu.UpdateUserRequest)
    - [User](#ondewo.nlu.User)
    - [UserInfo](#ondewo.nlu.UserInfo)
    - [UserInfo.ProjectRolesEntry](#ondewo.nlu.UserInfo.ProjectRolesEntry)
  
    - [DefaultServerRole](#ondewo.nlu.DefaultServerRole)
  
    - [Users](#ondewo.nlu.Users)
  
- [Scalar Value Types](#scalar-value-types)



<a name="ondewo/nlu/user.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ondewo/nlu/user.proto



<a name="ondewo.nlu.CreateServerRoleRequest"></a>

### CreateServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [ServerRole](#ondewo.nlu.ServerRole) |  | If the role_id is not provided, an incremental value will be assigned The &#34;name&#34; and &#34;role_type&#34; are mandatory values The permissions all default to False if not provided specifically |






<a name="ondewo.nlu.CreateUserRequest"></a>

### CreateUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  |  |
| password | [string](#string) |  |  |






<a name="ondewo.nlu.DeleteServerRoleRequest"></a>

### DeleteServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | role is identified by role id, if empty will throw an error in the backend |






<a name="ondewo.nlu.DeleteUserRequest"></a>

### DeleteUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | user is identified by user id, if empty will throw an error in the backend |






<a name="ondewo.nlu.GetServerRoleRequest"></a>

### GetServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | role is identified by role id |
| role_name | [string](#string) |  | role can also be uniquely identified by its name |






<a name="ondewo.nlu.GetUserRequest"></a>

### GetUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | the user is identified by user id |
| user_email | [string](#string) |  | the user can identified by their email |






<a name="ondewo.nlu.ListServerPermissionsRequest"></a>

### ListServerPermissionsRequest
Server permissions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListServerPermissionsResponse"></a>

### ListServerPermissionsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| permissions | [string](#string) | repeated | The list of server permissions. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListServerRolesRequest"></a>

### ListServerRolesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListServerRolesResponse"></a>

### ListServerRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server_roles | [ServerRole](#ondewo.nlu.ServerRole) | repeated | The list of server roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListUserInfosResponse"></a>

### ListUserInfosResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [UserInfo](#ondewo.nlu.UserInfo) | repeated | The list of server roles. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.ListUsersRequest"></a>

### ListUsersRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [string](#string) |  | Optional. The next_page_token value returned from a previous list request. |






<a name="ondewo.nlu.ListUsersResponse"></a>

### ListUsersResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [User](#ondewo.nlu.User) | repeated | The list of users. There will be a maximum number of items returned based on the page_token field in the request. |
| next_page_token | [string](#string) |  | Token to retrieve the next page of results, or empty if there are no more results in the list. |






<a name="ondewo.nlu.LoginRequest"></a>

### LoginRequest
Authentication messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_email | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="ondewo.nlu.LoginResponse"></a>

### LoginResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  |  |
| auth_token | [string](#string) |  |  |






<a name="ondewo.nlu.ServerRole"></a>

### ServerRole
Server Role messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role_id | [uint32](#uint32) |  | unique identifier of the role |
| name | [string](#string) |  | unique name of the role |
| permissions | [string](#string) | repeated | defines the permissions for the given role (the strings can be gotten from the ListServerPermissions) |






<a name="ondewo.nlu.UpdateServerRoleRequest"></a>

### UpdateServerRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| role | [ServerRole](#ondewo.nlu.ServerRole) |  | role_id in the Role message should be given, if empty will throw an error in the backend other fields in the Role are optional. Only the fields to be updated should be provided |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.UpdateUserRequest"></a>

### UpdateUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  | user_id in the User message should be given, if empty will throw an error in the backend password and other fields in the User are optional. Only the fields to be updated should be provided |
| password | [string](#string) |  |  |
| update_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. The mask to control which fields get updated. |






<a name="ondewo.nlu.User"></a>

### User
this message contains all the fields that required for user db


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [string](#string) |  | when creating user user_id is empty, then it will be generated on creation time on backend |
| display_name | [string](#string) |  | Optional field display_name is the name that will be used on the frontend to interact with the user it shouldn&#39;t be unique. If not provided user_name will also be used as display name |
| server_role_id | [uint32](#uint32) |  | server role type of the given user. If nothing is provided, the user is set to USER (minimum access) |
| user_email | [string](#string) |  | user e-mail should be a valid e-mail and unique |






<a name="ondewo.nlu.UserInfo"></a>

### UserInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#ondewo.nlu.User) |  |  |
| project_roles | [UserInfo.ProjectRolesEntry](#ondewo.nlu.UserInfo.ProjectRolesEntry) | repeated | If in GetUser, ListUser requests UserView is FULL, then the mapping is additionally provided of parent of the project and corresponding ProjectRole of the user |






<a name="ondewo.nlu.UserInfo.ProjectRolesEntry"></a>

### UserInfo.ProjectRolesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ProjectRole](#ondewo.nlu.ProjectRole) |  |  |





 


<a name="ondewo.nlu.DefaultServerRole"></a>

### DefaultServerRole


| Name | Number | Description |
| ---- | ------ | ----------- |
| SERVER_UNSPECIFIED | 0 | unspecified server role |
| SERVER_USER | 1 | read-only access |
| SERVER_MANAGER | 2 | SERVER_USER&#39;s permissions &#43; CRUD of projects and Users |
| SERVER_ADMIN | 3 | this role can do everything |
| SERVER_INACTIVE | 4 | this role can do nothing. Used to set a user as inactive in the server. |


 

 


<a name="ondewo.nlu.Users"></a>

### Users


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateUser | [CreateUserRequest](#ondewo.nlu.CreateUserRequest) | [User](#ondewo.nlu.User) |  |
| GetUser | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [User](#ondewo.nlu.User) |  |
| GetUserInfo | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [UserInfo](#ondewo.nlu.UserInfo) |  |
| DeleteUser | [GetUserRequest](#ondewo.nlu.GetUserRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| UpdateUser | [UpdateUserRequest](#ondewo.nlu.UpdateUserRequest) | [User](#ondewo.nlu.User) |  |
| ListUsers | [ListUsersRequest](#ondewo.nlu.ListUsersRequest) | [ListUsersResponse](#ondewo.nlu.ListUsersResponse) |  |
| ListUserInfos | [ListUsersRequest](#ondewo.nlu.ListUsersRequest) | [ListUserInfosResponse](#ondewo.nlu.ListUserInfosResponse) |  |
| CreateServerRole | [CreateServerRoleRequest](#ondewo.nlu.CreateServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) |  |
| GetServerRole | [GetServerRoleRequest](#ondewo.nlu.GetServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) |  |
| DeleteServerRole | [DeleteServerRoleRequest](#ondewo.nlu.DeleteServerRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| UpdateServerRole | [UpdateServerRoleRequest](#ondewo.nlu.UpdateServerRoleRequest) | [ServerRole](#ondewo.nlu.ServerRole) |  |
| ListServerRoles | [ListServerRolesRequest](#ondewo.nlu.ListServerRolesRequest) | [ListServerRolesResponse](#ondewo.nlu.ListServerRolesResponse) |  |
| ListServerPermissions | [ListServerPermissionsRequest](#ondewo.nlu.ListServerPermissionsRequest) | [ListServerPermissionsResponse](#ondewo.nlu.ListServerPermissionsResponse) |  |
| Login | [LoginRequest](#ondewo.nlu.LoginRequest) | [LoginResponse](#ondewo.nlu.LoginResponse) |  |
| CheckLogin | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |

 



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

