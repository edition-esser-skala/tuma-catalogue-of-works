\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    c'4 g8 c es4 es8 d
    c4 h16[ c d8] g,4 h8 c
    h4 c8 \hA h c4. c8
    c h b b b b b b
    b as as as as4 g
  }
}

SopranoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- _ rum, a -- ve
  Do -- mi -- na An -- ge --
  lo -- rum, sal -- ve ra -- dix, sal -- ve
  por -- ta, sal -- ve por -- ta,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 g'4 c,8 g'
    as4 g8 f es4 d8 es16[ f]
    g8 g g g g f16 f g8 as
    g g g g g g g g
    g f f f f4 es
  }
}

AltoLyrics = \lyricmode {
  A -- ve Re --
  gi -- na coe -- lo -- rum, coe --
  lo -- rum, a -- ve Do -- mi -- na An -- ge --
  lo -- rum, sal -- ve ra -- dix, sal -- ve
  por -- ta, sal -- ve por -- ta,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1
    r2 c4 g8 c
    es4 es8 d c4 d
    d d8 d c c c c
    c c c c b4 b
  }
}

TenoreLyrics = \lyricmode {
  A -- ve Re -- %2
  gi -- na coe -- lo -- _
  rum, sal -- ve ra -- dix, sal -- ve
  por -- ta ex qua mun -- do
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*2
    g'4 c,8 g' as4 g8 f
    g g, g' g e e e e
    f f, f' f d4 es
  }
}

BassoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, sal -- ve ra -- dix, sal -- ve
  por -- ta ex qua mun -- do
}

Organo = {
  \relative c {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "[no tempo]"
    << {
      c''4 g8 c es4 es8 d
      c4 h16 c d8
    } \\ {
      r2 g,4 c,8 g'
      as4 g8 f
    } >> \clef tenor c4 g8 c
    \clef bass g4 c,8 g' as4 g8 f
    g g, g'4 e4. e8
    f f, f'4 d es
  }
}

BassFigures = \figuremode {
  r1
  r2. <_!>4
  <6 _!>2 <7>8 <6>4 <6 5>8
  <4> <_!> <_->4 <6 5>2
  r2 <6 5>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vla" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new Staff {
      \set Staff.instrumentName = \markup \center-column { "org" "b" }
      \Organo
    }
    \new FiguredBass { \BassFigures }
  >>
}
