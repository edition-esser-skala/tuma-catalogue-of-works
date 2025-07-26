\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    a'8. a16 a8 g a a a4
    a8 b a8. a16 a8 a a a
    a a a g a a a a
    a b a4 a a8 c!
    c c c h c4 c
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Chri --
  ste ex -- au -- di nos, Fi -- li, Re --
  dem -- ptor mun -- di, De -- us, mi -- se --
  re -- re no -- bis, san -- cta
  vir -- go vir -- gi -- num, "ma -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    f8. f16 f8 d e e e4
    f8 g e e f f e e
    f f16 f f8 d e e e e
    f e e4 f r
    r f8 f e e f f16 f
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Pa --
  ter de coe -- lis, De -- us, san -- cta
  Tri -- ni -- tas, u -- nus De -- us, mi -- se --
  re -- re no -- bis,
  ma -- ter Chri -- sti, ma -- ter "di -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r8 a d d cis cis cis cis
    d4. cis8 d4 r
    r d8 d16 d cis8 d e a,
    r d d cis d d a4
    g8 a f4 g a
  }
}

TenoreLyrics = \lyricmode {
  Chri -- ste e -- lei -- son, Chri -- ste
  au -- di nos,
  Spi -- ri -- tus San -- cte, De -- us,
  san -- cta Ma -- ri -- a, o --
  ra pro no -- bis, "ma -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    d8. c16 b8 b a a a4
    d8 g, a4 d cis8 cis
    d c b4 a cis8 cis
    d g a4 d, f8 f
    e f d8. d16 c!4 f
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, Chri --
  ste e -- lei -- son, mi -- se --
  re -- re no -- bis, mi -- se --
  re -- re no -- bis, san -- cta
  De -- i ge -- ni -- trix, "o -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    d8.-\tutti c16 b4 a2
    d8 g, a4 d cis
    d8 c b4 a cis
    d8 g a4 d, f
    e8 f d4 c! f
  }
}

BassFigures = \figuremode {
  r4 <7>8 <6> <_+>2
  r8 <_-> <4> <_+>4. r4
  r <7>8 <6> <_+>2
  r8 <_-> <4> <_+>4. <5>4
  <6> <7>8 <6> r2
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" "vl" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" "vla" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
