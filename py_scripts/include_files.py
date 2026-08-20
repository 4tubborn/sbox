from pathlib import Path

from beet import Context, BinaryFile


def beet_default(ctx: Context):
    root = Path(ctx.directory)

    # Include .mcfunction files anywhere under data/
    for path in root.rglob(".mcfunction"):
        if not path.is_file():
            continue

        relative = path.relative_to(root)

        if not relative.parts or relative.parts[0] != "data":
            continue

        ctx.data.extra[relative.as_posix()] = BinaryFile(
            source_path=path
        )

    # Include everything under the root mcdoc/ directory
    mcdoc_root = root / "mcdoc"

    if mcdoc_root.is_dir():
        for path in mcdoc_root.rglob("*"):
            if not path.is_file():
                continue

            relative = path.relative_to(root)

            ctx.data.extra[relative.as_posix()] = BinaryFile(
                source_path=path
            )