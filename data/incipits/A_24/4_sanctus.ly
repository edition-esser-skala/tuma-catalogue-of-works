\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    e'1~
    e2 e
    d dis
    e h~
    h4 a2 g4
    fis2 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r2 a'~
    a ais
    r4 r8 fis fis2
    g r
    g4 f!8 e dis4 e~
    e dis e2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    e'1~^\tutti
    e2 e
    d dis
    e h~
    h4 a2 g4
    fis2 e
  }
}

SopranoLyrics = \lyricmode {
  San --
  ctus,
  san -- _
  ctus, san --
  _ _
  _ ctus
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 a'~^\tutti
    a ais
    r4 r8 fis~ fis2
    g r
    g4 f!8[ e] dis4 e~
    e dis e2
  }
}

AltoLyrics = \lyricmode {
  San --
  ctus,
  san --
  ctus,
  san -- _ _ _
  _ ctus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 c^\tutti
    cis cis
    r4 r8 h~ h2
    h r
    e4 c!8[ e,] fis4 g8[ a]
    h2 h
  }
}

TenoreLyrics = \lyricmode {
  San --
  _ ctus,
  san --
  ctus,
  san -- _ _ _
  _ ctus
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 a'^\tutti
    g fis
    r4 r8 h, a2
    g r
    c! h~
    h e
  }
}

BassoLyrics = \lyricmode {
  San --
  _ ctus,
  san -- _
  ctus,
  san -- _
  ctus
}

Organo = {
  \relative c {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    e''2-\tutti \clef bass a,,,
    g fis
    \clef soprano d'''4. \clef bass h,,8 a!2
    g \clef soprano h''
    \clef bass c,,! h~
    h e
  }
}

BassFigures = \figuremode {
  r1
  <4\+ 2>2 <7 5\+ _+>
  r <4\+ 2>
  <6>1
  <7>4 <6> <7 _+> <6 4>
  <5\+ \t> <\t _+>2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
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
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
