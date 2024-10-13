# Re-estimating the current token usage based on our conversation up to this point
# Same assumption of 1 token per 4 characters on average

approximate_characters_per_interaction = 3000
total_interactions_so_far = 50  # Adjusting the total interactions to fit the current length of the conversation

# Calculate approximate token usage again
total_tokens_used = approximate_characters_per_interaction * total_interactions_so_far * tokens_per_character
total_tokens_used
