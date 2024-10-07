#!/usr/bin/env python

import pathlib
import re


def main(input_file: pathlib.Path, output_file: pathlib.Path) -> None:
    """
    Function that converts the keymaps file to whichkey descriptions.

    Parameters
    ----------
    input_file : pathlib.Path
        The path to the input file containing keymaps.
    output_file : pathlib.Path
        The path to the output file where whichkey descriptions will be written.
    """
    # NOTE: Comment to test italics ==
    action_pattern = r"<cmd>(.*?)<cr>"
    key_pattern = r'"([^"]*)"'
    with open(input_file, "r") as f:
        lines = f.readlines()
    actions = []
    keys = []
    for line in lines:
        if line.strip().startswith("action"):
            match = re.search(action_pattern, line.strip(), re.IGNORECASE)
            if match:
                actions.append(match.group(1))
            else:
                print(line.strip())
                raise ValueError("Action not extracted")
        elif line.strip().startswith("key"):
            match = re.search(key_pattern, line.strip(), re.IGNORECASE)
            if match:
                keys.append(match.group(1))
            else:
                raise ValueError("Key not extracted")
        else:
            continue
    keymaps = {k: v for k, v in zip(keys, actions)}
    with open(output_file, "w") as f:
        for key, action in keymaps.items():
            f.write(f'"{key}" = "{action}";\n')


if __name__ == "__main__":
    input_file = pathlib.Path("keymaps.txt")
    output_file = pathlib.Path("keymaps_whichkey.txt")
    main(input_file, output_file)
