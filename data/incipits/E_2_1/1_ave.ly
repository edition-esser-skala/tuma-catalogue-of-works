\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    \after 4*0 -\unisono R1*5
    r8 g''16( d) d8 es16( d) d8 a'16( d,) d8 es16( d)
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1
    g'4^\solo d8 b' b[ a16 g] a8 g
    f16[ e?] d8 r4 d4. g8
    e4 e8 e f[ es16 d] c8 f
    d16[ c] d8 r g4 a8 fis4
    g r r2
  }
}

AltoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, a -- ve
  Do -- mi -- na An -- _ ge --
  lo -- rum, a -- ve, a --
  ve.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    d4^\solo g,8 es' es[ d16 c] d8 c
    b16[ a] g8 r4 r2
    a4. d8 h4 h8 h
    c[ b16 a] g8 c a16[ g] a8 a4~
    a8[ g16 fis] g[ b c d] es[ d c b] a4
    g r r2
  }
}

TenoreLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum,
  a -- ve Do -- mi -- na
  An -- _ ge -- lo -- rum, a --
  _ _ _
  ve.
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    g'8-\solo a b g fis2
    g8 a b g cis,2
    d8 e f d g g, h g
    c c e c f f, a f
    b b es b c a d d,
    g4 r8 g' fis4 r8 \hA fis
  }
}

BassFigures = \figuremode {
  r4. <6>8 <7>4 <6>8 <5>
  r2 <7>4 <6>8 <5>
  r2 <_!>
  q1
  <7>8 <6>4 q4. <_+>4
  r4. <6>8 q2
}

\score {
  <<
    \new Staff {
      \set Staff.instrumentName = "vl"
      \Violino
    }
    \new ChoirStaff <<
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
