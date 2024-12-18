from pypinyin import pinyin, Style

# read from emoji.txt in data folder, each line contains a word and its corresponding emoji, the format is as follows:
# ```
# 吐舌头	吐舌头 😛 😜 😝
# ```
# each word could have multiple emojis, separated by a space
# each emoji might be mapped to multiple words
# write a function to generate a file containing emoji to the word mapping
# output file should be named emoji_data_cn.txt

def emoji_to_word():
    emojis = {}
    with open('data/emoji.txt') as f:
        lines = f.readlines()
    for line in lines:
        line = line.strip()
        if not line:
            continue

        _, other = line.split('\t')
        parts = other.split()
        emoji_name = parts[0]
        pinyin_name = '_'.join([x[0] for x in pinyin(emoji_name, style=Style.NORMAL)])
        for emoji in parts[1:]:
            if emoji not in emojis:
                emojis[emoji] = []
            if pinyin_name not in emojis[emoji]:
                emojis[emoji].append((pinyin_name, emoji_name))

    with open('build/emoji_data_cn.txt', 'w') as f:
        for emoji, words in emojis.items():
            words = [f'{x[0]}#{x[1]}' for x in words]
            f.write(f'{emoji}\t{" ".join(words)}\n')

if __name__ == '__main__':
    emoji_to_word()