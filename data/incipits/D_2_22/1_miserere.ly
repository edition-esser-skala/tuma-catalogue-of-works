\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    es'4 c d8[ c] d4
    r g,\p as4. as8
    g4\f c des4. des8
    des[ c] c4 r c~\p
    c b b\f as
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se -- re -- re,
  mi -- _ se --
  re -- re, mi -- se --
  re -- re, mi --
  se -- re -- re
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    g'4 as as g
    r g2 f4
    f es e4. e8
    e4 f r2
    r f4 f
  }
}

AltoLyrics = \lyricmode {
  Mi -- se -- re -- re,
  mi -- se --
  re -- re, mi -- se --
  re -- re,
  mi -- "se -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c4 es d d
    R1
    c4 c g2
    as r
    des c\f
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se -- re -- re,

  mi -- se -- re --
  re
  me -- i,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    c4 c h h
    R1
    c4. c8 b!2
    as r
    r f'4. f8
  }
}

BassoLyrics = \lyricmode {
  Mi -- se -- re -- re,

  mi -- se -- re --
  re,
  mi -- s"e -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2 h
    R1
    c2 b!
    as r
    r f4 f'~
  }
}

BassFigures = \figuremode {
  <5>4 <6-> <7-> <6>
  r1
  <5 4>4 <\t 3> <4! _->2
  <5! 4->4 <6 3>2.
  r2 <5 4>4 <\t _->
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
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
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
