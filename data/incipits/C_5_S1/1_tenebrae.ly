\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key b \major \time 3/4 \tempoMarkup "Andante"
    b'4. c8 d4
    c \appoggiatura b a2
    b f4
    g es g
    c d es
    es f, d'
    d c2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key b \major \time 3/4 \tempoMarkup "Andante"
    f4. es8 d4
    g f2
    f f4
    es g f
    \appoggiatura f es2 d4
    c2 d8 es
    f4 f2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key b \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    b'4.^\tutti c8 d4
    c \appoggiatura b a2
    b f4
    g es g
    c d es
    es f, d'
    d c2
  }
}

SopranoLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt, cum
  cru -- ci -- fi --
  xis -- _ sent
  Je -- sum Ju --
  dae -- i:
}

Alto = {
  \relative c' {
    \clef alto
    \key b \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    f4.^\tutti es8 d4
    g f2
    f f4
    es g f
    \appoggiatura f es2 d4
    c c d8[ es]
    f4 f2
  }
}

AltoLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt, cum
  cru -- ci -- fi --
  xis -- sent
  Je -- sum Ju --
  dae -- i:
}

Tenore = {
  \relative c' {
    \clef tenor
    \key b \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    d4.^\tutti es8 f4
    es \appoggiatura d c2
    d b4
    b b b
    a b c
    c es b
    b a2
  }
}

TenoreLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt, cum
  cru -- ci -- fi --
  xis -- _ sent
  Je -- sum Ju --
  dae -- i:
}

Basso = {
  \relative c {
    \clef bass
    \key b \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    b4.^\tutti b8 b'4
    es, f2
    b, d4
    es es d
    c2 b4
    a a b
    f' f,2
  }
}

BassoLyrics = \lyricmode {
  Te -- ne -- brae
  fa -- ctae
  sunt, cum
  cru -- ci -- fi --
  xis -- sent
  Je -- sum Ju --
  dae -- i:
}

Organo = {
  \relative c {
    \clef bass
    \key b \major \time 3/4 \tempoMarkup "Andante"
    b4-\tutti b' b,
    es f f,
    b c d
    es, es' d
    c, c' b
    a2 b4
    f' c a
  }
}

BassFigures = \figuremode {
  r2.
  <6>4 <4> <3>
  r2 <6>4
  <5>2 <6>4
  q2 <4>4
  <5>2.
  <4>4 <6> <\t>
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
