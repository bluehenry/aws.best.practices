PUT _template/filebeat_template
{
  "index_patterns": ["filebeat-*"], 
  "settings": {
    "index.opendistro.index_state_management.policy_id": "delete_indices_after_180d"
  }
}