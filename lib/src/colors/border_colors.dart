/// Border colors
enum BorderColor {
  inherit,
  current,
  transparent,
  black,
  white,
  slate_50,
  slate_100,
  slate_200,
  slate_300,
  slate_400,
  slate_500,
  slate_600,
  slate_700,
  slate_800,
  slate_900,
  slate_950,
  gray_50,
  gray_100,
  gray_200,
  gray_300,
  gray_400,
  gray_500,
  gray_600,
  gray_700,
  gray_800,
  gray_900,
  gray_950,
  zinc_50,
  zinc_100,
  zinc_200,
  zinc_300,
  zinc_400,
  zinc_500,
  zinc_600,
  zinc_700,
  zinc_800,
  zinc_900,
  zinc_950,
  neutral_50,
  neutral_100,
  neutral_200,
  neutral_300,
  neutral_400,
  neutral_500,
  neutral_600,
  neutral_700,
  neutral_800,
  neutral_900,
  neutral_950,
  stone_50,
  stone_100,
  stone_200,
  stone_300,
  stone_400,
  stone_500,
  stone_600,
  stone_700,
  stone_800,
  stone_900,
  stone_950,
  red_50,
  red_100,
  red_200,
  red_300,
  red_400,
  red_500,
  red_600,
  red_700,
  red_800,
  red_900,
  red_950,
  orange_50,
  orange_100,
  orange_200,
  orange_300,
  orange_400,
  orange_500,
  orange_600,
  orange_700,
  orange_800,
  orange_900,
  orange_950,
  amber_50,
  amber_100,
  amber_200,
  amber_300,
  amber_400,
  amber_500,
  amber_600,
  amber_700,
  amber_800,
  amber_900,
  amber_950,
  yellow_50,
  yellow_100,
  yellow_200,
  yellow_300,
  yellow_400,
  yellow_500,
  yellow_600,
  yellow_700,
  yellow_800,
  yellow_900,
  yellow_950,
  lime_50,
  lime_100,
  lime_200,
  lime_300,
  lime_400,
  lime_500,
  lime_600,
  lime_700,
  lime_800,
  lime_900,
  lime_950,
  green_50,
  green_100,
  green_200,
  green_300,
  green_400,
  green_500,
  green_600,
  green_700,
  green_800,
  green_900,
  green_950,
  emerald_50,
  emerald_100,
  emerald_200,
  emerald_300,
  emerald_400,
  emerald_500,
  emerald_600,
  emerald_700,
  emerald_800,
  emerald_900,
  emerald_950,
  teal_50,
  teal_100,
  teal_200,
  teal_300,
  teal_400,
  teal_500,
  teal_600,
  teal_700,
  teal_800,
  teal_900,
  teal_950,
  cyan_50,
  cyan_100,
  cyan_200,
  cyan_300,
  cyan_400,
  cyan_500,
  cyan_600,
  cyan_700,
  cyan_800,
  cyan_900,
  cyan_950,
  sky_50,
  sky_100,
  sky_200,
  sky_300,
  sky_400,
  sky_500,
  sky_600,
  sky_700,
  sky_800,
  sky_900,
  sky_950,
  blue_50,
  blue_100,
  blue_200,
  blue_300,
  blue_400,
  blue_500,
  blue_600,
  blue_700,
  blue_800,
  blue_900,
  blue_950,
  indigo_50,
  indigo_100,
  indigo_200,
  indigo_300,
  indigo_400,
  indigo_500,
  indigo_600,
  indigo_700,
  indigo_800,
  indigo_900,
  indigo_950,
  violet_50,
  violet_100,
  violet_200,
  violet_300,
  violet_400,
  violet_500,
  violet_600,
  violet_700,
  violet_800,
  violet_900,
  violet_950,
  purple_50,
  purple_100,
  purple_200,
  purple_300,
  purple_400,
  purple_500,
  purple_600,
  purple_700,
  purple_800,
  purple_900,
  purple_950,
  fuchsia_50,
  fuchsia_100,
  fuchsia_200,
  fuchsia_300,
  fuchsia_400,
  fuchsia_500,
  fuchsia_600,
  fuchsia_700,
  fuchsia_800,
  fuchsia_900,
  fuchsia_950,
  pink_50,
  pink_100,
  pink_200,
  pink_300,
  pink_400,
  pink_500,
  pink_600,
  pink_700,
  pink_800,
  pink_900,
  pink_950,
  rose_50,
  rose_100,
  rose_200,
  rose_300,
  rose_400,
  rose_500,
  rose_600,
  rose_700,
  rose_800,
  rose_900,
  rose_950;

  String get className {
    switch (this) {
      case BorderColor.inherit:
        return 'border-inherit';
      case BorderColor.current:
        return 'border-current';
      case BorderColor.transparent:
        return 'border-transparent';
      case BorderColor.black:
        return 'border-black';
      case BorderColor.white:
        return 'border-white';
      case BorderColor.slate_50:
        return 'border-slate-50';
      case BorderColor.slate_100:
        return 'border-slate-100';
      case BorderColor.slate_200:
        return 'border-slate-200';
      case BorderColor.slate_300:
        return 'border-slate-300';
      case BorderColor.slate_400:
        return 'border-slate-400';
      case BorderColor.slate_500:
        return 'border-slate-500';
      case BorderColor.slate_600:
        return 'border-slate-600';
      case BorderColor.slate_700:
        return 'border-slate-700';
      case BorderColor.slate_800:
        return 'border-slate-800';
      case BorderColor.slate_900:
        return 'border-slate-900';
      case BorderColor.slate_950:
        return 'border-slate-950';
      case BorderColor.gray_50:
        return 'border-gray-50';
      case BorderColor.gray_100:
        return 'border-gray-100';
      case BorderColor.gray_200:
        return 'border-gray-200';
      case BorderColor.gray_300:
        return 'border-gray-300';
      case BorderColor.gray_400:
        return 'border-gray-400';
      case BorderColor.gray_500:
        return 'border-gray-500';
      case BorderColor.gray_600:
        return 'border-gray-600';
      case BorderColor.gray_700:
        return 'border-gray-700';
      case BorderColor.gray_800:
        return 'border-gray-800';
      case BorderColor.gray_900:
        return 'border-gray-900';
      case BorderColor.gray_950:
        return 'border-gray-950';
      case BorderColor.zinc_50:
        return 'border-zinc-50';
      case BorderColor.zinc_100:
        return 'border-zinc-100';
      case BorderColor.zinc_200:
        return 'border-zinc-200';
      case BorderColor.zinc_300:
        return 'border-zinc-300';
      case BorderColor.zinc_400:
        return 'border-zinc-400';
      case BorderColor.zinc_500:
        return 'border-zinc-500';
      case BorderColor.zinc_600:
        return 'border-zinc-600';
      case BorderColor.zinc_700:
        return 'border-zinc-700';
      case BorderColor.zinc_800:
        return 'border-zinc-800';
      case BorderColor.zinc_900:
        return 'border-zinc-900';
      case BorderColor.zinc_950:
        return 'border-zinc-950';
      case BorderColor.neutral_50:
        return 'border-neutral-50';
      case BorderColor.neutral_100:
        return 'border-neutral-100';
      case BorderColor.neutral_200:
        return 'border-neutral-200';
      case BorderColor.neutral_300:
        return 'border-neutral-300';
      case BorderColor.neutral_400:
        return 'border-neutral-400';
      case BorderColor.neutral_500:
        return 'border-neutral-500';
      case BorderColor.neutral_600:
        return 'border-neutral-600';
      case BorderColor.neutral_700:
        return 'border-neutral-700';
      case BorderColor.neutral_800:
        return 'border-neutral-800';
      case BorderColor.neutral_900:
        return 'border-neutral-900';
      case BorderColor.neutral_950:
        return 'border-neutral-950';
      case BorderColor.stone_50:
        return 'border-stone-50';
      case BorderColor.stone_100:
        return 'border-stone-100';
      case BorderColor.stone_200:
        return 'border-stone-200';
      case BorderColor.stone_300:
        return 'border-stone-300';
      case BorderColor.stone_400:
        return 'border-stone-400';
      case BorderColor.stone_500:
        return 'border-stone-500';
      case BorderColor.stone_600:
        return 'border-stone-600';
      case BorderColor.stone_700:
        return 'border-stone-700';
      case BorderColor.stone_800:
        return 'border-stone-800';
      case BorderColor.stone_900:
        return 'border-stone-900';
      case BorderColor.stone_950:
        return 'border-stone-950';
      case BorderColor.red_50:
        return 'border-red-50';
      case BorderColor.red_100:
        return 'border-red-100';
      case BorderColor.red_200:
        return 'border-red-200';
      case BorderColor.red_300:
        return 'border-red-300';
      case BorderColor.red_400:
        return 'border-red-400';
      case BorderColor.red_500:
        return 'border-red-500';
      case BorderColor.red_600:
        return 'border-red-600';
      case BorderColor.red_700:
        return 'border-red-700';
      case BorderColor.red_800:
        return 'border-red-800';
      case BorderColor.red_900:
        return 'border-red-900';
      case BorderColor.red_950:
        return 'border-red-950';
      case BorderColor.orange_50:
        return 'border-orange-50';
      case BorderColor.orange_100:
        return 'border-orange-100';
      case BorderColor.orange_200:
        return 'border-orange-200';
      case BorderColor.orange_300:
        return 'border-orange-300';
      case BorderColor.orange_400:
        return 'border-orange-400';
      case BorderColor.orange_500:
        return 'border-orange-500';
      case BorderColor.orange_600:
        return 'border-orange-600';
      case BorderColor.orange_700:
        return 'border-orange-700';
      case BorderColor.orange_800:
        return 'border-orange-800';
      case BorderColor.orange_900:
        return 'border-orange-900';
      case BorderColor.orange_950:
        return 'border-orange-950';
      case BorderColor.amber_50:
        return 'border-amber-50';
      case BorderColor.amber_100:
        return 'border-amber-100';
      case BorderColor.amber_200:
        return 'border-amber-200';
      case BorderColor.amber_300:
        return 'border-amber-300';
      case BorderColor.amber_400:
        return 'border-amber-400';
      case BorderColor.amber_500:
        return 'border-amber-500';
      case BorderColor.amber_600:
        return 'border-amber-600';
      case BorderColor.amber_700:
        return 'border-amber-700';
      case BorderColor.amber_800:
        return 'border-amber-800';
      case BorderColor.amber_900:
        return 'border-amber-900';
      case BorderColor.amber_950:
        return 'border-amber-950';
      case BorderColor.yellow_50:
        return 'border-yellow-50';
      case BorderColor.yellow_100:
        return 'border-yellow-100';
      case BorderColor.yellow_200:
        return 'border-yellow-200';
      case BorderColor.yellow_300:
        return 'border-yellow-300';
      case BorderColor.yellow_400:
        return 'border-yellow-400';
      case BorderColor.yellow_500:
        return 'border-yellow-500';
      case BorderColor.yellow_600:
        return 'border-yellow-600';
      case BorderColor.yellow_700:
        return 'border-yellow-700';
      case BorderColor.yellow_800:
        return 'border-yellow-800';
      case BorderColor.yellow_900:
        return 'border-yellow-900';
      case BorderColor.yellow_950:
        return 'border-yellow-950';
      case BorderColor.lime_50:
        return 'border-lime-50';
      case BorderColor.lime_100:
        return 'border-lime-100';
      case BorderColor.lime_200:
        return 'border-lime-200';
      case BorderColor.lime_300:
        return 'border-lime-300';
      case BorderColor.lime_400:
        return 'border-lime-400';
      case BorderColor.lime_500:
        return 'border-lime-500';
      case BorderColor.lime_600:
        return 'border-lime-600';
      case BorderColor.lime_700:
        return 'border-lime-700';
      case BorderColor.lime_800:
        return 'border-lime-800';
      case BorderColor.lime_900:
        return 'border-lime-900';
      case BorderColor.lime_950:
        return 'border-lime-950';
      case BorderColor.green_50:
        return 'border-green-50';
      case BorderColor.green_100:
        return 'border-green-100';
      case BorderColor.green_200:
        return 'border-green-200';
      case BorderColor.green_300:
        return 'border-green-300';
      case BorderColor.green_400:
        return 'border-green-400';
      case BorderColor.green_500:
        return 'border-green-500';
      case BorderColor.green_600:
        return 'border-green-600';
      case BorderColor.green_700:
        return 'border-green-700';
      case BorderColor.green_800:
        return 'border-green-800';
      case BorderColor.green_900:
        return 'border-green-900';
      case BorderColor.green_950:
        return 'border-green-950';
      case BorderColor.emerald_50:
        return 'border-emerald-50';
      case BorderColor.emerald_100:
        return 'border-emerald-100';
      case BorderColor.emerald_200:
        return 'border-emerald-200';
      case BorderColor.emerald_300:
        return 'border-emerald-300';
      case BorderColor.emerald_400:
        return 'border-emerald-400';
      case BorderColor.emerald_500:
        return 'border-emerald-500';
      case BorderColor.emerald_600:
        return 'border-emerald-600';
      case BorderColor.emerald_700:
        return 'border-emerald-700';
      case BorderColor.emerald_800:
        return 'border-emerald-800';
      case BorderColor.emerald_900:
        return 'border-emerald-900';
      case BorderColor.emerald_950:
        return 'border-emerald-950';
      case BorderColor.teal_50:
        return 'border-teal-50';
      case BorderColor.teal_100:
        return 'border-teal-100';
      case BorderColor.teal_200:
        return 'border-teal-200';
      case BorderColor.teal_300:
        return 'border-teal-300';
      case BorderColor.teal_400:
        return 'border-teal-400';
      case BorderColor.teal_500:
        return 'border-teal-500';
      case BorderColor.teal_600:
        return 'border-teal-600';
      case BorderColor.teal_700:
        return 'border-teal-700';
      case BorderColor.teal_800:
        return 'border-teal-800';
      case BorderColor.teal_900:
        return 'border-teal-900';
      case BorderColor.teal_950:
        return 'border-teal-950';
      case BorderColor.cyan_50:
        return 'border-cyan-50';
      case BorderColor.cyan_100:
        return 'border-cyan-100';
      case BorderColor.cyan_200:
        return 'border-cyan-200';
      case BorderColor.cyan_300:
        return 'border-cyan-300';
      case BorderColor.cyan_400:
        return 'border-cyan-400';
      case BorderColor.cyan_500:
        return 'border-cyan-500';
      case BorderColor.cyan_600:
        return 'border-cyan-600';
      case BorderColor.cyan_700:
        return 'border-cyan-700';
      case BorderColor.cyan_800:
        return 'border-cyan-800';
      case BorderColor.cyan_900:
        return 'border-cyan-900';
      case BorderColor.cyan_950:
        return 'border-cyan-950';
      case BorderColor.sky_50:
        return 'border-sky-50';
      case BorderColor.sky_100:
        return 'border-sky-100';
      case BorderColor.sky_200:
        return 'border-sky-200';
      case BorderColor.sky_300:
        return 'border-sky-300';
      case BorderColor.sky_400:
        return 'border-sky-400';
      case BorderColor.sky_500:
        return 'border-sky-500';
      case BorderColor.sky_600:
        return 'border-sky-600';
      case BorderColor.sky_700:
        return 'border-sky-700';
      case BorderColor.sky_800:
        return 'border-sky-800';
      case BorderColor.sky_900:
        return 'border-sky-900';
      case BorderColor.sky_950:
        return 'border-sky-950';
      case BorderColor.blue_50:
        return 'border-blue-50';
      case BorderColor.blue_100:
        return 'border-blue-100';
      case BorderColor.blue_200:
        return 'border-blue-200';
      case BorderColor.blue_300:
        return 'border-blue-300';
      case BorderColor.blue_400:
        return 'border-blue-400';
      case BorderColor.blue_500:
        return 'border-blue-500';
      case BorderColor.blue_600:
        return 'border-blue-600';
      case BorderColor.blue_700:
        return 'border-blue-700';
      case BorderColor.blue_800:
        return 'border-blue-800';
      case BorderColor.blue_900:
        return 'border-blue-900';
      case BorderColor.blue_950:
        return 'border-blue-950';
      case BorderColor.indigo_50:
        return 'border-indigo-50';
      case BorderColor.indigo_100:
        return 'border-indigo-100';
      case BorderColor.indigo_200:
        return 'border-indigo-200';
      case BorderColor.indigo_300:
        return 'border-indigo-300';
      case BorderColor.indigo_400:
        return 'border-indigo-400';
      case BorderColor.indigo_500:
        return 'border-indigo-500';
      case BorderColor.indigo_600:
        return 'border-indigo-600';
      case BorderColor.indigo_700:
        return 'border-indigo-700';
      case BorderColor.indigo_800:
        return 'border-indigo-800';
      case BorderColor.indigo_900:
        return 'border-indigo-900';
      case BorderColor.indigo_950:
        return 'border-indigo-950';
      case BorderColor.violet_50:
        return 'border-violet-50';
      case BorderColor.violet_100:
        return 'border-violet-100';
      case BorderColor.violet_200:
        return 'border-violet-200';
      case BorderColor.violet_300:
        return 'border-violet-300';
      case BorderColor.violet_400:
        return 'border-violet-400';
      case BorderColor.violet_500:
        return 'border-violet-500';
      case BorderColor.violet_600:
        return 'border-violet-600';
      case BorderColor.violet_700:
        return 'border-violet-700';
      case BorderColor.violet_800:
        return 'border-violet-800';
      case BorderColor.violet_900:
        return 'border-violet-900';
      case BorderColor.violet_950:
        return 'border-violet-950';
      case BorderColor.purple_50:
        return 'border-purple-50';
      case BorderColor.purple_100:
        return 'border-purple-100';
      case BorderColor.purple_200:
        return 'border-purple-200';
      case BorderColor.purple_300:
        return 'border-purple-300';
      case BorderColor.purple_400:
        return 'border-purple-400';
      case BorderColor.purple_500:
        return 'border-purple-500';
      case BorderColor.purple_600:
        return 'border-purple-600';
      case BorderColor.purple_700:
        return 'border-purple-700';
      case BorderColor.purple_800:
        return 'border-purple-800';
      case BorderColor.purple_900:
        return 'border-purple-900';
      case BorderColor.purple_950:
        return 'border-purple-950';
      case BorderColor.fuchsia_50:
        return 'border-fuchsia-50';
      case BorderColor.fuchsia_100:
        return 'border-fuchsia-100';
      case BorderColor.fuchsia_200:
        return 'border-fuchsia-200';
      case BorderColor.fuchsia_300:
        return 'border-fuchsia-300';
      case BorderColor.fuchsia_400:
        return 'border-fuchsia-400';
      case BorderColor.fuchsia_500:
        return 'border-fuchsia-500';
      case BorderColor.fuchsia_600:
        return 'border-fuchsia-600';
      case BorderColor.fuchsia_700:
        return 'border-fuchsia-700';
      case BorderColor.fuchsia_800:
        return 'border-fuchsia-800';
      case BorderColor.fuchsia_900:
        return 'border-fuchsia-900';
      case BorderColor.fuchsia_950:
        return 'border-fuchsia-950';
      case BorderColor.pink_50:
        return 'border-pink-50';
      case BorderColor.pink_100:
        return 'border-pink-100';
      case BorderColor.pink_200:
        return 'border-pink-200';
      case BorderColor.pink_300:
        return 'border-pink-300';
      case BorderColor.pink_400:
        return 'border-pink-400';
      case BorderColor.pink_500:
        return 'border-pink-500';
      case BorderColor.pink_600:
        return 'border-pink-600';
      case BorderColor.pink_700:
        return 'border-pink-700';
      case BorderColor.pink_800:
        return 'border-pink-800';
      case BorderColor.pink_900:
        return 'border-pink-900';
      case BorderColor.pink_950:
        return 'border-pink-950';
      case BorderColor.rose_50:
        return 'border-rose-50';
      case BorderColor.rose_100:
        return 'border-rose-100';
      case BorderColor.rose_200:
        return 'border-rose-200';
      case BorderColor.rose_300:
        return 'border-rose-300';
      case BorderColor.rose_400:
        return 'border-rose-400';
      case BorderColor.rose_500:
        return 'border-rose-500';
      case BorderColor.rose_600:
        return 'border-rose-600';
      case BorderColor.rose_700:
        return 'border-rose-700';
      case BorderColor.rose_800:
        return 'border-rose-800';
      case BorderColor.rose_900:
        return 'border-rose-900';
      case BorderColor.rose_950:
        return 'border-rose-950';
    }
  }
}
