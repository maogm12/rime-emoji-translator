import json

# read from emoji_pretty.json in data which is a json file containing emoji data
# It's a list, each element is a dictionary containing information about an emoji
# representing as follows:
# ```
# [
#     {
#         "name": "WHITE UP POINTING INDEX",
#         "unified": "261D-FE0F",
#         "non_qualified": "261D",
#         "docomo": null,
#         "au": "E4F6",
#         "softbank": "E00F",
#         "google": "FEB98",
#         "image": "261d.png",
#         "sheet_x": 1,
#         "sheet_y": 2,
#         "short_name": "point_up",
#         "short_names": [
#             "point_up"
#         ],
#         "text": null,
#         "texts": null,
#         "category": "People & Body",
#         "subcategory": "hand-single-finger",
#         "sort_order": 170,
#         "added_in": "1.4",
#         "has_img_apple": true,
#         "has_img_google": true,
#         "has_img_twitter": true,
#         "has_img_facebook": false,
#         "skin_variations": {
#             "1F3FB": {
#                 "unified": "261D-1F3FB",
#                 "image": "261d-1f3fb.png",
#                 "sheet_x": 1,
#                 "sheet_y": 3,
#                 "added_in": "6.0",
#                 "has_img_apple": true,
#                 "has_img_google": false,
#                 "has_img_twitter": false,
#                 "has_img_facebook": false,
#             }
#             ...
#             "1F3FB-1F3FC": {
#                 ...
#             }
#         },
#         "obsoletes": "ABCD-1234",
#         "obsoleted_by": "5678-90EF"
#     },
#     ...
# ]
# ```
# `unified` The Unicode codepoint, as 4-5 hex digits. Where an emoji needs 2 or more codepoints, they are specified like 1F1EA-1F1F8. For emoji that need to specifiy a variation selector (-FE0F), that is included here.
# `short_name` The commonly-agreed upon short name for the image, as supported in campfire, github etc via the :colon-syntax:
# `short_names` An array of all the known short names.
# Write a function to generate a file containing short_name to the actual emoji (convert to code pointers in `unified` to actual unicode string, in utf8 format) mapping
# if the emoji has multiple short names, output all of them
# Output a text file, each line contains the emoji and a list of all the short names, separated by a tab, file name is emoji_data_en.txt

def short_name_to_unicode():
    with open('data/emoji_pretty.json') as f:
        emojis = json.load(f)
    with open('build/emoji_data_en.txt', 'w') as f:
        for emoji in emojis:
            short_names = emoji['short_names']
            if not short_names:
                short_names = [emoji['short_name']]
            # replace - with _ in short names
            short_names = [short_name.replace('-', '_') for short_name in short_names]
            # write to file: unicode \t short_name1 short_name2 ...
            unified = emoji['unified']
            unified = unified.split('-')
            unified = ''.join([chr(int(code, 16)) for code in unified])
            f.write(f'{unified}\t{" ".join(short_names)}\n')

if __name__ == '__main__':
    short_name_to_unicode()