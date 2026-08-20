from pathlib import Path
from beet import Context, TextFile
from beet.contrib.minify_function import beet_default as minify_function

def clean_mcfunction_content(source_path: Path) -> str:
    return "".join(
        stripped + "\n"
        for line in source_path.read_text(encoding="utf-8").splitlines()
        if (stripped := line.strip()) and not stripped.startswith("#")
    )

def beet_default(ctx: Context):
    root = Path(ctx.directory)

    # 匹配 data/ 目录下名为 .mcfunction 的文件
    for path in root.rglob(".mcfunction"):
        if not path.is_file():
            continue

        relative = path.relative_to(root)

        if not relative.parts or relative.parts[0] != "data":
            continue

        # 读取、清理并写入 TextFile
        cleaned_text = clean_mcfunction_content(path)
        ctx.data.extra[relative.as_posix()] = TextFile(cleaned_text)

    # 处理 mcdoc 目录
    mcdoc_root = root / "mcdoc"
    if mcdoc_root.is_dir():
        for path in mcdoc_root.rglob("*"):
            if not path.is_file():
                continue

            relative = path.relative_to(root)
            ctx.data.extra[relative.as_posix()] = TextFile(source_path=path)