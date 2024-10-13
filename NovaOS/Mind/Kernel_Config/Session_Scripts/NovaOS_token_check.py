# Estimating current token usage based on the conversation history so far.
# Since token usage typically counts 1 token per 4 characters (on average), we will approximate the token usage here.

# I'm going to set a rough estimate of the current conversation length based on the interactions so far.
# Assuming we've been through ~3000 characters per interaction block, with 2 interactions per block (input/output).

approximate_characters_per_interaction = 3000
tokens_per_character = 1 / 4  # Approx 1 token per 4 characters
total_interactions_so_far = 40  # Estimation of total conversation blocks so far

# Calculate approximate token usage
total_tokens_used = approximate_characters_per_interaction * total_interactions_so_far * tokens_per_character
total_tokens_used
